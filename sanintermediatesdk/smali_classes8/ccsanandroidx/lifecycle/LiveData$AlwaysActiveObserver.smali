.class Lccsanandroidx/lifecycle/LiveData$AlwaysActiveObserver;
.super Lccsanandroidx/lifecycle/LiveData$ObserverWrapper;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlwaysActiveObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/lifecycle/LiveData<",
        "TT;>.ObserverWrapper;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/lifecycle/LiveData;


# direct methods
.method constructor <init>(Lccsanandroidx/lifecycle/LiveData;Lccsanandroidx/lifecycle/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 431
    .local p0, "this":Lccsanandroidx/lifecycle/LiveData$AlwaysActiveObserver;, "Lccsanandroidx/lifecycle/LiveData<TT;>.AlwaysActiveObserver;"
    .local p2, "observer":Lccsanandroidx/lifecycle/Observer;, "Lccsanandroidx/lifecycle/Observer<-TT;>;"
    iput-object p1, p0, Lccsanandroidx/lifecycle/LiveData$AlwaysActiveObserver;->this$0:Lccsanandroidx/lifecycle/LiveData;

    .line 432
    invoke-direct {p0, p1, p2}, Lccsanandroidx/lifecycle/LiveData$ObserverWrapper;-><init>(Lccsanandroidx/lifecycle/LiveData;Lccsanandroidx/lifecycle/Observer;)V

    .line 433
    return-void
.end method


# virtual methods
.method shouldBeActive()Z
    .locals 1

    .line 437
    .local p0, "this":Lccsanandroidx/lifecycle/LiveData$AlwaysActiveObserver;, "Lccsanandroidx/lifecycle/LiveData<TT;>.AlwaysActiveObserver;"
    const/4 v0, 0x1

    return v0
.end method
