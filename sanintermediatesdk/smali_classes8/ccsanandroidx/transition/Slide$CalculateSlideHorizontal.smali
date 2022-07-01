.class abstract Lccsanandroidx/transition/Slide$CalculateSlideHorizontal;
.super Ljava/lang/Object;
.source "Slide.java"

# interfaces
.implements Lccsanandroidx/transition/Slide$CalculateSlide;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/transition/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CalculateSlideHorizontal"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsanandroidx/transition/Slide$1;)V
    .locals 0
    .param p1, "x0"    # Lccsanandroidx/transition/Slide$1;

    .line 77
    invoke-direct {p0}, Lccsanandroidx/transition/Slide$CalculateSlideHorizontal;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoneY(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)F
    .locals 1
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "view"    # Lccsanandroid/view/View;

    .line 81
    invoke-virtual {p2}, Lccsanandroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method
