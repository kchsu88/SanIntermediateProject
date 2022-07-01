.class Lccsanandroidx/core/app/ActivityCompat$2;
.super Ljava/lang/Object;
.source "ActivityCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/app/ActivityCompat;->recreate(Lccsanandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lccsanandroid/app/Activity;


# direct methods
.method constructor <init>(Lccsanandroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$activity"
        }
    .end annotation

    .line 588
    iput-object p1, p0, Lccsanandroidx/core/app/ActivityCompat$2;->val$activity:Lccsanandroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 591
    iget-object v0, p0, Lccsanandroidx/core/app/ActivityCompat$2;->val$activity:Lccsanandroid/app/Activity;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    iget-object v0, p0, Lccsanandroidx/core/app/ActivityCompat$2;->val$activity:Lccsanandroid/app/Activity;

    invoke-static {v0}, Lccsanandroidx/core/app/ActivityRecreator;->recreate(Lccsanandroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    iget-object v0, p0, Lccsanandroidx/core/app/ActivityCompat$2;->val$activity:Lccsanandroid/app/Activity;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->recreate()V

    .line 598
    :cond_0
    return-void
.end method
