.class Lccsanandroidx/loader/content/ModernAsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/loader/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lccsanandroidx/loader/content/ModernAsyncTask;


# direct methods
.method varargs constructor <init>(Lccsanandroidx/loader/content/ModernAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lccsanandroidx/loader/content/ModernAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/loader/content/ModernAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .line 528
    .local p0, "this":Lccsanandroidx/loader/content/ModernAsyncTask$AsyncTaskResult;, "Lccsanandroidx/loader/content/ModernAsyncTask$AsyncTaskResult<TData;>;"
    .local p2, "data":[Ljava/lang/Object;, "[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p1, p0, Lccsanandroidx/loader/content/ModernAsyncTask$AsyncTaskResult;->mTask:Lccsanandroidx/loader/content/ModernAsyncTask;

    .line 530
    iput-object p2, p0, Lccsanandroidx/loader/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 531
    return-void
.end method
