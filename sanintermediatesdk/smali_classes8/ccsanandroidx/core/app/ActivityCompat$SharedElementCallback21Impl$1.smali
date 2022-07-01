.class Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl$1;
.super Ljava/lang/Object;
.source "ActivityCompat.java"

# interfaces
.implements Lccsanandroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Lccsanandroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl;

.field final synthetic val$listener:Lccsanandroid/app/SharedElementCallback$OnSharedElementsReadyListener;


# direct methods
.method constructor <init>(Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl;Lccsanandroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener"
        }
    .end annotation

    .line 694
    iput-object p1, p0, Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl$1;->this$0:Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl;

    iput-object p2, p0, Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl$1;->val$listener:Lccsanandroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedElementsReady()V
    .locals 1

    .line 697
    iget-object v0, p0, Lccsanandroidx/core/app/ActivityCompat$SharedElementCallback21Impl$1;->val$listener:Lccsanandroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-interface {v0}, Lccsanandroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    .line 698
    return-void
.end method
