.class Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayMetricsScreenDimensions"
.end annotation


# instance fields
.field private final displayMetrics:Lccsanandroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Lccsanandroid/util/DisplayMetrics;)V
    .locals 0
    .param p1, "displayMetrics"    # Lccsanandroid/util/DisplayMetrics;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;->displayMetrics:Lccsanandroid/util/DisplayMetrics;

    .line 107
    return-void
.end method


# virtual methods
.method public getHeightPixels()I
    .locals 1

    .line 116
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;->displayMetrics:Lccsanandroid/util/DisplayMetrics;

    iget v0, v0, Lccsanandroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getWidthPixels()I
    .locals 1

    .line 111
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;->displayMetrics:Lccsanandroid/util/DisplayMetrics;

    iget v0, v0, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method
