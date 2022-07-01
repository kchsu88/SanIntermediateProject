.class Lccsanandroidx/core/app/ActivityRecreator$1;
.super Ljava/lang/Object;
.source "ActivityRecreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/app/ActivityRecreator;->recreate(Lccsanandroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callbacks:Lccsanandroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;

.field final synthetic val$token:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lccsanandroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$callbacks",
            "val$token"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lccsanandroidx/core/app/ActivityRecreator$1;->val$callbacks:Lccsanandroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;

    iput-object p2, p0, Lccsanandroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 146
    iget-object v0, p0, Lccsanandroidx/core/app/ActivityRecreator$1;->val$callbacks:Lccsanandroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;

    iget-object v1, p0, Lccsanandroidx/core/app/ActivityRecreator$1;->val$token:Ljava/lang/Object;

    iput-object v1, v0, Lccsanandroidx/core/app/ActivityRecreator$LifecycleCheckCallbacks;->currentlyRecreatingToken:Ljava/lang/Object;

    .line 147
    return-void
.end method
