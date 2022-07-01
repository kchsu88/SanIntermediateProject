.class Lccsanandroidx/room/InvalidationTracker$WeakObserver;
.super Lccsanandroidx/room/InvalidationTracker$Observer;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WeakObserver"
.end annotation


# instance fields
.field final mDelegateRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroidx/room/InvalidationTracker$Observer;",
            ">;"
        }
    .end annotation
.end field

.field final mTracker:Lccsanandroidx/room/InvalidationTracker;


# direct methods
.method constructor <init>(Lccsanandroidx/room/InvalidationTracker;Lccsanandroidx/room/InvalidationTracker$Observer;)V
    .locals 1
    .param p1, "tracker"    # Lccsanandroidx/room/InvalidationTracker;
    .param p2, "delegate"    # Lccsanandroidx/room/InvalidationTracker$Observer;

    .line 838
    iget-object v0, p2, Lccsanandroidx/room/InvalidationTracker$Observer;->mTables:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lccsanandroidx/room/InvalidationTracker$Observer;-><init>([Ljava/lang/String;)V

    .line 839
    iput-object p1, p0, Lccsanandroidx/room/InvalidationTracker$WeakObserver;->mTracker:Lccsanandroidx/room/InvalidationTracker;

    .line 840
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsanandroidx/room/InvalidationTracker$WeakObserver;->mDelegateRef:Ljava/lang/ref/WeakReference;

    .line 841
    return-void
.end method


# virtual methods
.method public onInvalidated(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 845
    .local p1, "tables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lccsanandroidx/room/InvalidationTracker$WeakObserver;->mDelegateRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/room/InvalidationTracker$Observer;

    .line 846
    .local v0, "observer":Lccsanandroidx/room/InvalidationTracker$Observer;
    if-nez v0, :cond_0

    .line 847
    iget-object v1, p0, Lccsanandroidx/room/InvalidationTracker$WeakObserver;->mTracker:Lccsanandroidx/room/InvalidationTracker;

    invoke-virtual {v1, p0}, Lccsanandroidx/room/InvalidationTracker;->removeObserver(Lccsanandroidx/room/InvalidationTracker$Observer;)V

    goto :goto_0

    .line 849
    :cond_0
    invoke-virtual {v0, p1}, Lccsanandroidx/room/InvalidationTracker$Observer;->onInvalidated(Ljava/util/Set;)V

    .line 851
    :goto_0
    return-void
.end method
