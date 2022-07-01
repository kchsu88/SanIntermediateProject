.class final Lccsancom/google/android/material/transition/FadeModeEvaluators$2;
.super Ljava/lang/Object;
.source "FadeModeEvaluators.java"

# interfaces
.implements Lccsancom/google/android/material/transition/FadeModeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/transition/FadeModeEvaluators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FFF)Lccsancom/google/android/material/transition/FadeModeResult;
    .locals 3
    .param p1, "progress"    # F
    .param p2, "fadeStartFraction"    # F
    .param p3, "fadeEndFraction"    # F

    .line 45
    const/16 v0, 0xff

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p3, p1}, Lccsancom/google/android/material/transition/TransitionUtils;->lerp(IIFFF)I

    move-result v0

    .line 46
    .local v0, "startAlpha":I
    const/16 v1, 0xff

    .line 47
    .local v1, "endAlpha":I
    invoke-static {v0, v1}, Lccsancom/google/android/material/transition/FadeModeResult;->startOnTop(II)Lccsancom/google/android/material/transition/FadeModeResult;

    move-result-object v2

    return-object v2
.end method
