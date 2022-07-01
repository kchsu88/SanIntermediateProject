.class Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
.super Lccsanandroidx/core/app/ActivityOptionsCompat;
.source "ActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityOptionsCompatImpl"
.end annotation


# instance fields
.field private final mActivityOptions:Lccsanandroid/app/ActivityOptions;


# direct methods
.method constructor <init>(Lccsanandroid/app/ActivityOptions;)V
    .locals 0
    .param p1, "activityOptions"    # Lccsanandroid/app/ActivityOptions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityOptions"
        }
    .end annotation

    .line 256
    invoke-direct {p0}, Lccsanandroidx/core/app/ActivityOptionsCompat;-><init>()V

    .line 257
    iput-object p1, p0, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Lccsanandroid/app/ActivityOptions;

    .line 258
    return-void
.end method


# virtual methods
.method public getLaunchBounds()Lccsanandroid/graphics/Rect;
    .locals 2

    .line 293
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 294
    const/4 v0, 0x0

    return-object v0

    .line 296
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Lccsanandroid/app/ActivityOptions;

    invoke-virtual {v0}, Lccsanandroid/app/ActivityOptions;->getLaunchBounds()Lccsanandroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public requestUsageTimeReport(Lccsanandroid/app/PendingIntent;)V
    .locals 2
    .param p1, "receiver"    # Lccsanandroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiver"
        }
    .end annotation

    .line 276
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 277
    iget-object v0, p0, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Lccsanandroid/app/ActivityOptions;

    invoke-virtual {v0, p1}, Lccsanandroid/app/ActivityOptions;->requestUsageTimeReport(Lccsanandroid/app/PendingIntent;)V

    .line 279
    :cond_0
    return-void
.end method

.method public setLaunchBounds(Lccsanandroid/graphics/Rect;)Lccsanandroidx/core/app/ActivityOptionsCompat;
    .locals 2
    .param p1, "screenSpacePixelRect"    # Lccsanandroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screenSpacePixelRect"
        }
    .end annotation

    .line 284
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 285
    return-object p0

    .line 287
    :cond_0
    new-instance v0, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    iget-object v1, p0, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Lccsanandroid/app/ActivityOptions;

    .line 288
    invoke-virtual {v1, p1}, Lccsanandroid/app/ActivityOptions;->setLaunchBounds(Lccsanandroid/graphics/Rect;)Lccsanandroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Lccsanandroid/app/ActivityOptions;)V

    .line 287
    return-object v0
.end method

.method public toBundle()Lccsanandroid/os/Bundle;
    .locals 1

    .line 262
    iget-object v0, p0, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Lccsanandroid/app/ActivityOptions;

    invoke-virtual {v0}, Lccsanandroid/app/ActivityOptions;->toBundle()Lccsanandroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Lccsanandroidx/core/app/ActivityOptionsCompat;)V
    .locals 3
    .param p1, "otherOptions"    # Lccsanandroidx/core/app/ActivityOptionsCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherOptions"
        }
    .end annotation

    .line 267
    instance-of v0, p1, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    if-eqz v0, :cond_0

    .line 268
    move-object v0, p1

    check-cast v0, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    .line 270
    .local v0, "otherImpl":Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    iget-object v1, p0, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Lccsanandroid/app/ActivityOptions;

    iget-object v2, v0, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Lccsanandroid/app/ActivityOptions;

    invoke-virtual {v1, v2}, Lccsanandroid/app/ActivityOptions;->update(Lccsanandroid/app/ActivityOptions;)V

    .line 272
    .end local v0    # "otherImpl":Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    :cond_0
    return-void
.end method
