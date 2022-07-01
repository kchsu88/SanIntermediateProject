.class Lccsancom/google/android/material/internal/StateListAnimator$Tuple;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/internal/StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Tuple"
.end annotation


# instance fields
.field final animator:Lccsanandroid/animation/ValueAnimator;

.field final specs:[I


# direct methods
.method constructor <init>([ILccsanandroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "specs"    # [I
    .param p2, "animator"    # Lccsanandroid/animation/ValueAnimator;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lccsancom/google/android/material/internal/StateListAnimator$Tuple;->specs:[I

    .line 122
    iput-object p2, p0, Lccsancom/google/android/material/internal/StateListAnimator$Tuple;->animator:Lccsanandroid/animation/ValueAnimator;

    .line 123
    return-void
.end method
