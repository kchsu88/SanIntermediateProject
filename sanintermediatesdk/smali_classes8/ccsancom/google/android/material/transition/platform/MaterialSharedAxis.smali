.class public final Lccsancom/google/android/material/transition/platform/MaterialSharedAxis;
.super Lccsancom/google/android/material/transition/platform/MaterialVisibility;
.source "MaterialSharedAxis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/transition/platform/MaterialSharedAxis$Axis;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/android/material/transition/platform/MaterialVisibility<",
        "Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;",
        ">;"
    }
.end annotation


# static fields
.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field public static final Z:I = 0x2


# instance fields
.field private final axis:I

.field private final forward:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "axis"    # I
    .param p2, "forward"    # Z

    .line 85
    invoke-static {p1, p2}, Lccsancom/google/android/material/transition/platform/MaterialSharedAxis;->createPrimaryAnimatorProvider(IZ)Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    move-result-object v0

    invoke-static {}, Lccsancom/google/android/material/transition/platform/MaterialSharedAxis;->createSecondaryAnimatorProvider()Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;-><init>(Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    .line 86
    iput p1, p0, Lccsancom/google/android/material/transition/platform/MaterialSharedAxis;->axis:I

    .line 87
    iput-boolean p2, p0, Lccsancom/google/android/material/transition/platform/MaterialSharedAxis;->forward:Z

    .line 88
    return-void
.end method

.method private static createPrimaryAnimatorProvider(IZ)Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .locals 3
    .param p0, "axis"    # I
    .param p1, "forward"    # Z

    .line 101
    packed-switch p0, :pswitch_data_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid axis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :pswitch_0
    new-instance v0, Lccsancom/google/android/material/transition/platform/ScaleProvider;

    invoke-direct {v0, p1}, Lccsancom/google/android/material/transition/platform/ScaleProvider;-><init>(Z)V

    return-object v0

    .line 105
    :pswitch_1
    new-instance v0, Lccsancom/google/android/material/transition/platform/SlideDistanceProvider;

    if-eqz p1, :cond_0

    const/16 v1, 0x50

    goto :goto_0

    :cond_0
    const/16 v1, 0x30

    :goto_0
    invoke-direct {v0, v1}, Lccsancom/google/android/material/transition/platform/SlideDistanceProvider;-><init>(I)V

    return-object v0

    .line 103
    :pswitch_2
    new-instance v0, Lccsancom/google/android/material/transition/platform/SlideDistanceProvider;

    if-eqz p1, :cond_1

    const v1, 0x800005

    goto :goto_1

    :cond_1
    const v1, 0x800003

    :goto_1
    invoke-direct {v0, v1}, Lccsancom/google/android/material/transition/platform/SlideDistanceProvider;-><init>(I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createSecondaryAnimatorProvider()Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .locals 1

    .line 114
    new-instance v0, Lccsancom/google/android/material/transition/platform/FadeThroughProvider;

    invoke-direct {v0}, Lccsancom/google/android/material/transition/platform/FadeThroughProvider;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addAdditionalAnimatorProvider(Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->addAdditionalAnimatorProvider(Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    return-void
.end method

.method public bridge synthetic clearAdditionalAnimatorProvider()V
    .locals 0

    .line 48
    invoke-super {p0}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->clearAdditionalAnimatorProvider()V

    return-void
.end method

.method public getAxis()I
    .locals 1

    .line 92
    iget v0, p0, Lccsancom/google/android/material/transition/platform/MaterialSharedAxis;->axis:I

    return v0
.end method

.method public bridge synthetic getPrimaryAnimatorProvider()Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .locals 1

    .line 48
    invoke-super {p0}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->getPrimaryAnimatorProvider()Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryAnimatorProvider()Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .locals 1

    .line 48
    invoke-super {p0}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->getSecondaryAnimatorProvider()Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    move-result-object v0

    return-object v0
.end method

.method public isForward()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lccsancom/google/android/material/transition/platform/MaterialSharedAxis;->forward:Z

    return v0
.end method

.method public bridge synthetic onAppear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/transition/TransitionValues;Lccsanandroid/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->onAppear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/transition/TransitionValues;Lccsanandroid/transition/TransitionValues;)Lccsanandroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDisappear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/transition/TransitionValues;Lccsanandroid/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->onDisappear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/transition/TransitionValues;Lccsanandroid/transition/TransitionValues;)Lccsanandroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAdditionalAnimatorProvider(Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;)Z
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->removeAdditionalAnimatorProvider(Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setSecondaryAnimatorProvider(Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lccsancom/google/android/material/transition/platform/MaterialVisibility;->setSecondaryAnimatorProvider(Lccsancom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    return-void
.end method
