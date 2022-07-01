.class Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl;
.super Lccsanandroid/app/SharedElementCallback;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/app/ActivityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SharedElementCallback21Impl"
.end annotation


# instance fields
.field private final mCallback:Lccsanandroidx/core/app/SharedElementCallback;


# direct methods
.method constructor <init>(Lccsanandroidx/core/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Lccsanandroidx/core/app/SharedElementCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 649
    invoke-direct {p0}, Lccsanandroid/app/SharedElementCallback;-><init>()V

    .line 650
    iput-object p1, p0, Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Lccsanandroidx/core/app/SharedElementCallback;

    .line 651
    return-void
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Lccsanandroid/view/View;Lccsanandroid/graphics/Matrix;Lccsanandroid/graphics/RectF;)Lccsanandroid/os/Parcelable;
    .locals 1
    .param p1, "sharedElement"    # Lccsanandroid/view/View;
    .param p2, "viewToGlobalMatrix"    # Lccsanandroid/graphics/Matrix;
    .param p3, "screenBounds"    # Lccsanandroid/graphics/RectF;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sharedElement",
            "viewToGlobalMatrix",
            "screenBounds"
        }
    .end annotation

    .line 680
    iget-object v0, p0, Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Lccsanandroidx/core/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroidx/core/app/SharedElementCallback;->onCaptureSharedElementSnapshot(Lccsanandroid/view/View;Lccsanandroid/graphics/Matrix;Lccsanandroid/graphics/RectF;)Lccsanandroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onCreateSnapshotView(Lccsanandroid/content/Context;Lccsanandroid/os/Parcelable;)Lccsanandroid/view/View;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "snapshot"    # Lccsanandroid/os/Parcelable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "snapshot"
        }
    .end annotation

    .line 686
    iget-object v0, p0, Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Lccsanandroidx/core/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/core/app/SharedElementCallback;->onCreateSnapshotView(Lccsanandroid/content/Context;Lccsanandroid/os/Parcelable;)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "names",
            "sharedElements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 674
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lccsanandroid/view/View;>;"
    iget-object v0, p0, Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Lccsanandroidx/core/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/core/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 675
    return-void
.end method

.method public onRejectSharedElements(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rejectedSharedElements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 669
    .local p1, "rejectedSharedElements":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    iget-object v0, p0, Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Lccsanandroidx/core/app/SharedElementCallback;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/app/SharedElementCallback;->onRejectSharedElements(Ljava/util/List;)V

    .line 670
    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sharedElementNames",
            "sharedElements",
            "sharedElementSnapshots"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 663
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    iget-object v0, p0, Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Lccsanandroidx/core/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroidx/core/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 665
    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sharedElementNames",
            "sharedElements",
            "sharedElementSnapshots"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 656
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    iget-object v0, p0, Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Lccsanandroidx/core/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroidx/core/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 658
    return-void
.end method

.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Lccsanandroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 2
    .param p3, "listener"    # Lccsanandroid/app/SharedElementCallback$OnSharedElementsReadyListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "sharedElementNames",
            "sharedElements",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;",
            "Lccsanandroid/app/SharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    .line 693
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    iget-object v0, p0, Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Lccsanandroidx/core/app/SharedElementCallback;

    new-instance v1, Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl$1;

    invoke-direct {v1, p0, p3}, Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl$1;-><init>(Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl;Lccsanandroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    invoke-virtual {v0, p1, p2, v1}, Lccsanandroidx/core/app/SharedElementCallback;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Lccsanandroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    .line 700
    return-void
.end method
