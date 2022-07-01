import time
import threading
import multiprocessing.queues

class ParallelThread(threading.Thread):
    def __init__(self, pool_task_queue, pool_ret_queue, tid):
        super(ParallelThread, self).__init__()
        self.name = "t%02d" % tid
        self.task_queue = pool_task_queue#queue.Queue()
        self.pool_ret_queue = pool_ret_queue
        self.__running = True

    def run(self):
        while self.__running:
            task = self.task_queue.get()
            ret = task.execute()
            #print("[ParallelThread] Exe task, ret=", ret)
            self.task_queue.task_done()
            self.pool_ret_queue.put(ret)

    def stop(self):
        self.__running = False

class ParallelProcessingPool():
    def __init__(self, parallel_count, *args, **argd):
        self._parallel_count = 2
        self._thread_pool = []
        self._input_task_count = 0

        import queue as queue
        self._pool_task_queue = queue.Queue()
        self._pool_ret_queue = queue.Queue()

        self.init(parallel_count)

    def init(self, parallel_count):
        for i in range(parallel_count):
            t = ParallelThread(self._pool_task_queue, self._pool_ret_queue, i)
            t.setDaemon(True)
            t.start()
            self._thread_pool.append(t)

    def send_task(self, task, counter = True):
        if counter:
            self._input_task_count += 1
        self._pool_task_queue.put(task)

    def get_result(self):
        self._input_task_count -= 1
        ret = self._pool_ret_queue.get()
        self._pool_ret_queue.task_done()
        return ret

    def has_result_to_fetch(self):
        return self._input_task_count > 0

    def get_left_task_count(self):
        return self._input_task_count

    def get_processor_count(self):
        return self._parallel_count

    def wait_for_task_complete(self):
        while self._input_task_count > 0:
            self.get_result()
            time.sleep(0.1)
            if self._input_task_count % 10 == 0 :
                print("Task left:", self._input_task_count)

    def close(self):
        #print ("ParallelProcessingPool::close")
        self._pool_task_queue.join()
        self._pool_ret_queue.join()

        #print ("Queue, closed and joined")
        for t in self._thread_pool:
            t.stop()
        #print ("Threads joined")
        self._thread_pool = []
