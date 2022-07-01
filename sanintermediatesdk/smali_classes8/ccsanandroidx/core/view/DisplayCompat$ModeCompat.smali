.class public final Lccsanandroidx/core/view/DisplayCompat$ModeCompat;
.super Ljava/lang/Object;
.source "DisplayCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/DisplayCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModeCompat"
.end annotation


# instance fields
.field private final mIsNative:Z

.field private final mMode:Lccsanandroid/view/Display$Mode;

.field private final mPhysicalSize:Lccsanandroid/graphics/Point;


# direct methods
.method constructor <init>(Lccsanandroid/graphics/Point;)V
    .locals 1
    .param p1, "physicalSize"    # Lccsanandroid/graphics/Point;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "physicalSize"
        }
    .end annotation

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    const-string v0, "physicalSize == null"

    invoke-static {p1, v0}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iput-object p1, p0, Lccsanandroidx/core/view/DisplayCompat$ModeCompat;->mPhysicalSize:Lccsanandroid/graphics/Point;

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/core/view/DisplayCompat$ModeCompat;->mMode:Lccsanandroid/view/Display$Mode;

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/core/view/DisplayCompat$ModeCompat;->mIsNative:Z

    .line 335
    return-void
.end method

.method constructor <init>(Lccsanandroid/view/Display$Mode;Lccsanandroid/graphics/Point;)V
    .locals 1
    .param p1, "mode"    # Lccsanandroid/view/Display$Mode;
    .param p2, "physicalSize"    # Lccsanandroid/graphics/Point;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "physicalSize"
        }
    .end annotation

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    const-string v0, "mode == null, can\'t wrap a null reference"

    invoke-static {p1, v0}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v0, "physicalSize == null"

    invoke-static {p2, v0}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iput-object p2, p0, Lccsanandroidx/core/view/DisplayCompat$ModeCompat;->mPhysicalSize:Lccsanandroid/graphics/Point;

    .line 364
    iput-object p1, p0, Lccsanandroidx/core/view/DisplayCompat$ModeCompat;->mMode:Lccsanandroid/view/Display$Mode;

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/core/view/DisplayCompat$ModeCompat;->mIsNative:Z

    .line 366
    return-void
.end method

.method constructor <init>(Lccsanandroid/view/Display$Mode;Z)V
    .locals 3
    .param p1, "mode"    # Lccsanandroid/view/Display$Mode;
    .param p2, "isNative"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "isNative"
        }
    .end annotation

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    const-string v0, "mode == null, can\'t wrap a null reference"

    invoke-static {p1, v0}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    new-instance v0, Lccsanandroid/graphics/Point;

    invoke-virtual {p1}, Lccsanandroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    invoke-virtual {p1}, Lccsanandroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lccsanandroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lccsanandroidx/core/view/DisplayCompat$ModeCompat;->mPhysicalSize:Lccsanandroid/graphics/Point;

    .line 347
    iput-object p1, p0, Lccsanandroidx/core/view/DisplayCompat$ModeCompat;->mMode:Lccsanandroid/view/Display$Mode;

    .line 348
    iput-boolean p2, p0, Lccsanandroidx/core/view/DisplayCompat$ModeCompat;->mIsNative:Z

    .line 349
    return-void
.end method


# virtual methods
.method public getPhysicalHeight()I
    .locals 1

    .line 379
    iget-object v0, p0, Lccsanandroidx/core/view/DisplayCompat$ModeCompat;->mPhysicalSize:Lccsanandroid/graphics/Point;

    iget v0, v0, Lccsanandroid/graphics/Point;->y:I

    return v0
.end method

.method public getPhysicalWidth()I
    .locals 1

    .line 372
    iget-object v0, p0, Lccsanandroidx/core/view/DisplayCompat$ModeCompat;->mPhysicalSize:Lccsanandroid/graphics/Point;

    iget v0, v0, Lccsanandroid/graphics/Point;->x:I

    return v0
.end method

.method public isNative()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 393
    iget-boolean v0, p0, Lccsanandroidx/core/view/DisplayCompat$ModeCompat;->mIsNative:Z

    return v0
.end method

.method public toMode()Lccsanandroid/view/Display$Mode;
    .locals 1

    .line 402
    iget-object v0, p0, Lccsanandroidx/core/view/DisplayCompat$ModeCompat;->mMode:Lccsanandroid/view/Display$Mode;

    return-object v0
.end method
