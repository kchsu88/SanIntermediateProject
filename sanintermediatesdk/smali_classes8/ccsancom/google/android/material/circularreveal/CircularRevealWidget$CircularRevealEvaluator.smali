.class public Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;
.super Ljava/lang/Object;
.source "CircularRevealWidget.java"

# interfaces
.implements Lccsanandroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/circularreveal/CircularRevealWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CircularRevealEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/animation/TypeEvaluator<",
        "Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final CIRCULAR_REVEAL:Lccsanandroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/animation/TypeEvaluator<",
            "Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 209
    new-instance v0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;

    invoke-direct {v0}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;-><init>()V

    sput-object v0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->CIRCULAR_REVEAL:Lccsanandroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(Lccsancom/google/android/material/circularreveal/CircularRevealWidget$1;)V

    iput-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    return-void
.end method


# virtual methods
.method public evaluate(FLccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .locals 5
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .param p3, "endValue"    # Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 216
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v1, p2, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget v2, p3, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    .line 217
    invoke-static {v1, v2, p1}, Lccsancom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result v1

    iget v2, p2, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget v3, p3, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    .line 218
    invoke-static {v2, v3, p1}, Lccsancom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result v2

    iget v3, p2, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    iget v4, p3, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 219
    invoke-static {v3, v4, p1}, Lccsancom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result v3

    .line 216
    invoke-virtual {v0, v1, v2, v3}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->set(FFF)V

    .line 220
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->revealInfo:Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 207
    check-cast p2, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    check-cast p3, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->evaluate(FLccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)Lccsancom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object p1

    return-object p1
.end method
