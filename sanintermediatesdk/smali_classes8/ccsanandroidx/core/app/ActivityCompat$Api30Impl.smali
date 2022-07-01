.class Lccsanandroidx/core/app/ActivityCompat$Api30Impl;
.super Ljava/lang/Object;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/app/ActivityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api30Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    return-void
.end method

.method static setLocusContext(Lccsanandroid/app/Activity;Lccsanandroidx/core/content/LocusIdCompat;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p0, "activity"    # Lccsanandroid/app/Activity;
    .param p1, "locusId"    # Lccsanandroidx/core/content/LocusIdCompat;
    .param p2, "bundle"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "activity",
            "locusId",
            "bundle"
        }
    .end annotation

    .line 715
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lccsanandroidx/core/content/LocusIdCompat;->toLocusId()Lccsanandroid/content/LocusId;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0, p2}, Lccsanandroid/app/Activity;->setLocusContext(Lccsanandroid/content/LocusId;Lccsanandroid/os/Bundle;)V

    .line 716
    return-void
.end method
