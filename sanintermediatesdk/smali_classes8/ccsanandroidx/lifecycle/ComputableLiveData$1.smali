.class Lccsanandroidx/lifecycle/ComputableLiveData$1;
.super Lccsanandroidx/lifecycle/LiveData;
.source "ComputableLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/lifecycle/ComputableLiveData;-><init>(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/lifecycle/LiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/lifecycle/ComputableLiveData;


# direct methods
.method constructor <init>(Lccsanandroidx/lifecycle/ComputableLiveData;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/lifecycle/ComputableLiveData;

    .line 67
    .local p0, "this":Lccsanandroidx/lifecycle/ComputableLiveData$1;, "Lccsanandroidx/lifecycle/ComputableLiveData$1;"
    iput-object p1, p0, Lccsanandroidx/lifecycle/ComputableLiveData$1;->this$0:Lccsanandroidx/lifecycle/ComputableLiveData;

    invoke-direct {p0}, Lccsanandroidx/lifecycle/LiveData;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActive()V
    .locals 2

    .line 70
    .local p0, "this":Lccsanandroidx/lifecycle/ComputableLiveData$1;, "Lccsanandroidx/lifecycle/ComputableLiveData$1;"
    iget-object v0, p0, Lccsanandroidx/lifecycle/ComputableLiveData$1;->this$0:Lccsanandroidx/lifecycle/ComputableLiveData;

    iget-object v0, v0, Lccsanandroidx/lifecycle/ComputableLiveData;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lccsanandroidx/lifecycle/ComputableLiveData$1;->this$0:Lccsanandroidx/lifecycle/ComputableLiveData;

    iget-object v1, v1, Lccsanandroidx/lifecycle/ComputableLiveData;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method
