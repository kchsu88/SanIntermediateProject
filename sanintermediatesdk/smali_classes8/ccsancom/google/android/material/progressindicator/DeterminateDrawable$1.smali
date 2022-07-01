.class final Lccsancom/google/android/material/progressindicator/DeterminateDrawable$1;
.super Lccsanandroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "DeterminateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/progressindicator/DeterminateDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lccsancom/google/android/material/progressindicator/DeterminateDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .line 222
    invoke-direct {p0, p1}, Lccsanandroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lccsancom/google/android/material/progressindicator/DeterminateDrawable;)F
    .locals 2
    .param p1, "drawable"    # Lccsancom/google/android/material/progressindicator/DeterminateDrawable;

    .line 225
    invoke-static {p1}, Lccsancom/google/android/material/progressindicator/DeterminateDrawable;->access$000(Lccsancom/google/android/material/progressindicator/DeterminateDrawable;)F

    move-result v0

    const v1, 0x461c4000    # 10000.0f

    mul-float v0, v0, v1

    return v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 222
    check-cast p1, Lccsancom/google/android/material/progressindicator/DeterminateDrawable;

    invoke-virtual {p0, p1}, Lccsancom/google/android/material/progressindicator/DeterminateDrawable$1;->getValue(Lccsancom/google/android/material/progressindicator/DeterminateDrawable;)F

    move-result p1

    return p1
.end method

.method public setValue(Lccsancom/google/android/material/progressindicator/DeterminateDrawable;F)V
    .locals 1
    .param p1, "drawable"    # Lccsancom/google/android/material/progressindicator/DeterminateDrawable;
    .param p2, "value"    # F

    .line 230
    const v0, 0x461c4000    # 10000.0f

    div-float v0, p2, v0

    invoke-static {p1, v0}, Lccsancom/google/android/material/progressindicator/DeterminateDrawable;->access$100(Lccsancom/google/android/material/progressindicator/DeterminateDrawable;F)V

    .line 231
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 222
    check-cast p1, Lccsancom/google/android/material/progressindicator/DeterminateDrawable;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/progressindicator/DeterminateDrawable$1;->setValue(Lccsancom/google/android/material/progressindicator/DeterminateDrawable;F)V

    return-void
.end method
