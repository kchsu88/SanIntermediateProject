.class Lccsanandroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "PrecomputedTextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/text/PrecomputedTextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrecomputedTextFutureTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lccsanandroidx/core/text/PrecomputedTextCompat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lccsanandroidx/core/text/PrecomputedTextCompat$Params;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "params"    # Lccsanandroidx/core/text/PrecomputedTextCompat$Params;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "params",
            "text"
        }
    .end annotation

    .line 586
    new-instance v0, Lccsanandroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;

    invoke-direct {v0, p1, p2}, Lccsanandroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;-><init>(Lccsanandroidx/core/text/PrecomputedTextCompat$Params;Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 587
    return-void
.end method