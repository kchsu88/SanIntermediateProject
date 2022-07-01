.class public Lccsanandroidx/core/app/ActivityOptionsCompat;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
    }
.end annotation


# static fields
.field public static final EXTRA_USAGE_TIME_REPORT:Ljava/lang/String; = "android.activity.usage_time"

.field public static final EXTRA_USAGE_TIME_REPORT_PACKAGES:Ljava/lang/String; = "android.usage_time_packages"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    return-void
.end method

.method public static makeBasic()Lccsanandroidx/core/app/ActivityOptionsCompat;
    .locals 2

    .line 246
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 247
    new-instance v0, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    invoke-static {}, Lccsanandroid/app/ActivityOptions;->makeBasic()Lccsanandroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Lccsanandroid/app/ActivityOptions;)V

    return-object v0

    .line 249
    :cond_0
    new-instance v0, Lccsanandroidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Lccsanandroidx/core/app/ActivityOptionsCompat;-><init>()V

    return-object v0
.end method

.method public static makeClipRevealAnimation(Lccsanandroid/view/View;IIII)Lccsanandroidx/core/app/ActivityOptionsCompat;
    .locals 2
    .param p0, "source"    # Lccsanandroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "startX",
            "startY",
            "width",
            "height"
        }
    .end annotation

    .line 122
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 123
    new-instance v0, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    invoke-static {p0, p1, p2, p3, p4}, Lccsanandroid/app/ActivityOptions;->makeClipRevealAnimation(Lccsanandroid/view/View;IIII)Lccsanandroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Lccsanandroid/app/ActivityOptions;)V

    return-object v0

    .line 126
    :cond_0
    new-instance v0, Lccsanandroidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Lccsanandroidx/core/app/ActivityOptionsCompat;-><init>()V

    return-object v0
.end method

.method public static makeCustomAnimation(Lccsanandroid/content/Context;II)Lccsanandroidx/core/app/ActivityOptionsCompat;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "enterResId",
            "exitResId"
        }
    .end annotation

    .line 68
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 69
    new-instance v0, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    invoke-static {p0, p1, p2}, Lccsanandroid/app/ActivityOptions;->makeCustomAnimation(Lccsanandroid/content/Context;II)Lccsanandroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Lccsanandroid/app/ActivityOptions;)V

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Lccsanandroidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Lccsanandroidx/core/app/ActivityOptionsCompat;-><init>()V

    return-object v0
.end method

.method public static makeScaleUpAnimation(Lccsanandroid/view/View;IIII)Lccsanandroidx/core/app/ActivityOptionsCompat;
    .locals 2
    .param p0, "source"    # Lccsanandroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "startX",
            "startY",
            "startWidth",
            "startHeight"
        }
    .end annotation

    .line 98
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 99
    new-instance v0, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    invoke-static {p0, p1, p2, p3, p4}, Lccsanandroid/app/ActivityOptions;->makeScaleUpAnimation(Lccsanandroid/view/View;IIII)Lccsanandroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Lccsanandroid/app/ActivityOptions;)V

    return-object v0

    .line 102
    :cond_0
    new-instance v0, Lccsanandroidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Lccsanandroidx/core/app/ActivityOptionsCompat;-><init>()V

    return-object v0
.end method

.method public static makeSceneTransitionAnimation(Lccsanandroid/app/Activity;Lccsanandroid/view/View;Ljava/lang/String;)Lccsanandroidx/core/app/ActivityOptionsCompat;
    .locals 2
    .param p0, "activity"    # Lccsanandroid/app/Activity;
    .param p1, "sharedElement"    # Lccsanandroid/view/View;
    .param p2, "sharedElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "sharedElement",
            "sharedElementName"
        }
    .end annotation

    .line 179
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 180
    new-instance v0, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    invoke-static {p0, p1, p2}, Lccsanandroid/app/ActivityOptions;->makeSceneTransitionAnimation(Lccsanandroid/app/Activity;Lccsanandroid/view/View;Ljava/lang/String;)Lccsanandroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Lccsanandroid/app/ActivityOptions;)V

    return-object v0

    .line 183
    :cond_0
    new-instance v0, Lccsanandroidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Lccsanandroidx/core/app/ActivityOptionsCompat;-><init>()V

    return-object v0
.end method

.method public static varargs makeSceneTransitionAnimation(Lccsanandroid/app/Activity;[Lccsanandroidx/core/util/Pair;)Lccsanandroidx/core/app/ActivityOptionsCompat;
    .locals 4
    .param p0, "activity"    # Lccsanandroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "sharedElements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/app/Activity;",
            "[",
            "Lccsanandroidx/core/util/Pair<",
            "Lccsanandroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Lccsanandroidx/core/app/ActivityOptionsCompat;"
        }
    .end annotation

    .line 207
    .local p1, "sharedElements":[Lccsanandroidx/core/util/Pair;, "[Lccsanandroidx/core/util/Pair<Lccsanandroid/view/View;Ljava/lang/String;>;"
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "pairs":[Lccsanandroid/util/Pair;, "[Lccsanandroid/util/Pair<Lccsanandroid/view/View;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 210
    array-length v1, p1

    new-array v0, v1, [Lccsanandroid/util/Pair;

    .line 211
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 212
    aget-object v2, p1, v1

    iget-object v2, v2, Lccsanandroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lccsanandroid/view/View;

    aget-object v3, p1, v1

    iget-object v3, v3, Lccsanandroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lccsanandroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lccsanandroid/util/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    .line 217
    invoke-static {p0, v0}, Lccsanandroid/app/ActivityOptions;->makeSceneTransitionAnimation(Lccsanandroid/app/Activity;[Lccsanandroid/util/Pair;)Lccsanandroid/app/ActivityOptions;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Lccsanandroid/app/ActivityOptions;)V

    .line 216
    return-object v1

    .line 219
    .end local v0    # "pairs":[Lccsanandroid/util/Pair;, "[Lccsanandroid/util/Pair<Lccsanandroid/view/View;Ljava/lang/String;>;"
    :cond_1
    new-instance v0, Lccsanandroidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Lccsanandroidx/core/app/ActivityOptionsCompat;-><init>()V

    return-object v0
.end method

.method public static makeTaskLaunchBehind()Lccsanandroidx/core/app/ActivityOptionsCompat;
    .locals 2

    .line 234
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 235
    new-instance v0, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    invoke-static {}, Lccsanandroid/app/ActivityOptions;->makeTaskLaunchBehind()Lccsanandroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Lccsanandroid/app/ActivityOptions;)V

    return-object v0

    .line 237
    :cond_0
    new-instance v0, Lccsanandroidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Lccsanandroidx/core/app/ActivityOptionsCompat;-><init>()V

    return-object v0
.end method

.method public static makeThumbnailScaleUpAnimation(Lccsanandroid/view/View;Lccsanandroid/graphics/Bitmap;II)Lccsanandroidx/core/app/ActivityOptionsCompat;
    .locals 2
    .param p0, "source"    # Lccsanandroid/view/View;
    .param p1, "thumbnail"    # Lccsanandroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "thumbnail",
            "startX",
            "startY"
        }
    .end annotation

    .line 151
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 152
    new-instance v0, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    invoke-static {p0, p1, p2, p3}, Lccsanandroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Lccsanandroid/view/View;Lccsanandroid/graphics/Bitmap;II)Lccsanandroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Lccsanandroid/app/ActivityOptions;)V

    return-object v0

    .line 155
    :cond_0
    new-instance v0, Lccsanandroidx/core/app/ActivityOptionsCompat;

    invoke-direct {v0}, Lccsanandroidx/core/app/ActivityOptionsCompat;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getLaunchBounds()Lccsanandroid/graphics/Rect;
    .locals 1

    .line 325
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestUsageTimeReport(Lccsanandroid/app/PendingIntent;)V
    .locals 0
    .param p1, "receiver"    # Lccsanandroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiver"
        }
    .end annotation

    .line 375
    return-void
.end method

.method public setLaunchBounds(Lccsanandroid/graphics/Rect;)Lccsanandroidx/core/app/ActivityOptionsCompat;
    .locals 0
    .param p1, "screenSpacePixelRect"    # Lccsanandroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screenSpacePixelRect"
        }
    .end annotation

    .line 315
    return-object p0
.end method

.method public toBundle()Lccsanandroid/os/Bundle;
    .locals 1

    .line 337
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Lccsanandroidx/core/app/ActivityOptionsCompat;)V
    .locals 0
    .param p1, "otherOptions"    # Lccsanandroidx/core/app/ActivityOptionsCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherOptions"
        }
    .end annotation

    .line 347
    return-void
.end method
