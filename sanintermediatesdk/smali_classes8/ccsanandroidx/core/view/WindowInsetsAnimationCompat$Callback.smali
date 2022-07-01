.class public abstract Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/WindowInsetsAnimationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback$DispatchMode;
    }
.end annotation


# static fields
.field public static final DISPATCH_MODE_CONTINUE_ON_SUBTREE:I = 0x1

.field public static final DISPATCH_MODE_STOP:I


# instance fields
.field mDispachedInsets:Lccsanandroid/view/WindowInsets;

.field private final mDispatchMode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "dispatchMode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dispatchMode"
        }
    .end annotation

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput p1, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;->mDispatchMode:I

    .line 373
    return-void
.end method


# virtual methods
.method public final getDispatchMode()I
    .locals 1

    .line 396
    iget v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;->mDispatchMode:I

    return v0
.end method

.method public onEnd(Lccsanandroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 0
    .param p1, "animation"    # Lccsanandroidx/core/view/WindowInsetsAnimationCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 520
    return-void
.end method

.method public onPrepare(Lccsanandroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 0
    .param p1, "animation"    # Lccsanandroidx/core/view/WindowInsetsAnimationCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 441
    return-void
.end method

.method public abstract onProgress(Lccsanandroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Lccsanandroidx/core/view/WindowInsetsCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "insets",
            "runningAnimations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/core/view/WindowInsetsCompat;",
            "Ljava/util/List<",
            "Lccsanandroidx/core/view/WindowInsetsAnimationCompat;",
            ">;)",
            "Lccsanandroidx/core/view/WindowInsetsCompat;"
        }
    .end annotation
.end method

.method public onStart(Lccsanandroidx/core/view/WindowInsetsAnimationCompat;Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 0
    .param p1, "animation"    # Lccsanandroidx/core/view/WindowInsetsAnimationCompat;
    .param p2, "bounds"    # Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "animation",
            "bounds"
        }
    .end annotation

    .line 488
    return-object p2
.end method
