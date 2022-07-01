.class public abstract Lccsanandroidx/legacy/content/WakefulBroadcastReceiver;
.super Lccsanandroid/content/BroadcastReceiver;
.source "WakefulBroadcastReceiver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final EXTRA_WAKE_LOCK_ID:Ljava/lang/String; = "androidx.contentpager.content.wakelockid"

.field private static mNextId:I

.field private static final sActiveWakeLocks:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsanandroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    sput-object v0, Lccsanandroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Lccsanandroid/util/SparseArray;

    .line 77
    const/4 v0, 0x1

    sput v0, Lccsanandroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static completeWakefulIntent(Lccsanandroid/content/Intent;)Z
    .locals 7
    .param p0, "intent"    # Lccsanandroid/content/Intent;

    .line 126
    const-string v0, "androidx.contentpager.content.wakelockid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 127
    .local v0, "id":I
    if-nez v0, :cond_0

    .line 128
    return v1

    .line 130
    :cond_0
    sget-object v1, Lccsanandroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Lccsanandroid/util/SparseArray;

    monitor-enter v1

    .line 131
    :try_start_0
    invoke-virtual {v1, v0}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/os/PowerManager$WakeLock;

    .line 132
    .local v2, "wl":Lccsanandroid/os/PowerManager$WakeLock;
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 133
    invoke-virtual {v2}, Lccsanandroid/os/PowerManager$WakeLock;->release()V

    .line 134
    invoke-virtual {v1, v0}, Lccsanandroid/util/SparseArray;->remove(I)V

    .line 135
    monitor-exit v1

    return v3

    .line 143
    :cond_1
    const-string v4, "WakefulBroadcastReceiv."

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No active wake lock id #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    monitor-exit v1

    return v3

    .line 145
    .end local v2    # "wl":Lccsanandroid/os/PowerManager$WakeLock;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static startWakefulService(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;
    .locals 7
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "intent"    # Lccsanandroid/content/Intent;

    .line 94
    sget-object v0, Lccsanandroidx/legacy/content/WakefulBroadcastReceiver;->sActiveWakeLocks:Lccsanandroid/util/SparseArray;

    monitor-enter v0

    .line 95
    :try_start_0
    sget v1, Lccsanandroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    move v2, v1

    .line 96
    .local v2, "id":I
    const/4 v3, 0x1

    add-int/2addr v1, v3

    sput v1, Lccsanandroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    .line 97
    if-gtz v1, :cond_0

    .line 98
    sput v3, Lccsanandroidx/legacy/content/WakefulBroadcastReceiver;->mNextId:I

    .line 101
    :cond_0
    const-string v1, "androidx.contentpager.content.wakelockid"

    invoke-virtual {p1, v1, v2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    .line 102
    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->startService(Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;

    move-result-object v1

    .line 103
    .local v1, "comp":Lccsanandroid/content/ComponentName;
    if-nez v1, :cond_1

    .line 104
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 107
    :cond_1
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/os/PowerManager;

    .line 108
    .local v4, "pm":Lccsanandroid/os/PowerManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "androidx.core:wake:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v1}, Lccsanandroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-virtual {v4, v3, v5}, Lccsanandroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Lccsanandroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 110
    .local v3, "wl":Lccsanandroid/os/PowerManager$WakeLock;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lccsanandroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 111
    const-wide/32 v5, 0xea60

    invoke-virtual {v3, v5, v6}, Lccsanandroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 112
    invoke-virtual {v0, v2, v3}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    monitor-exit v0

    return-object v1

    .line 114
    .end local v1    # "comp":Lccsanandroid/content/ComponentName;
    .end local v2    # "id":I
    .end local v3    # "wl":Lccsanandroid/os/PowerManager$WakeLock;
    .end local v4    # "pm":Lccsanandroid/os/PowerManager;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
