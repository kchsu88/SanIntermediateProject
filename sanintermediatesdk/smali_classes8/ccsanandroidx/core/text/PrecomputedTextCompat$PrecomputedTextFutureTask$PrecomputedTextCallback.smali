.class Lccsanandroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;
.super Ljava/lang/Object;
.source "PrecomputedTextCompat.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrecomputedTextCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lccsanandroidx/core/text/PrecomputedTextCompat;",
        ">;"
    }
.end annotation


# instance fields
.field private mParams:Lccsanandroidx/core/text/PrecomputedTextCompat$Params;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lccsanandroidx/core/text/PrecomputedTextCompat$Params;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "params"    # Lccsanandroidx/core/text/PrecomputedTextCompat$Params;
    .param p2, "cs"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "params",
            "cs"
        }
    .end annotation

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    iput-object p1, p0, Lccsanandroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;->mParams:Lccsanandroidx/core/text/PrecomputedTextCompat$Params;

    .line 575
    iput-object p2, p0, Lccsanandroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;->mText:Ljava/lang/CharSequence;

    .line 576
    return-void
.end method


# virtual methods
.method public call()Lccsanandroidx/core/text/PrecomputedTextCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lccsanandroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;->mText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lccsanandroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;->mParams:Lccsanandroidx/core/text/PrecomputedTextCompat$Params;

    invoke-static {v0, v1}, Lccsanandroidx/core/text/PrecomputedTextCompat;->create(Ljava/lang/CharSequence;Lccsanandroidx/core/text/PrecomputedTextCompat$Params;)Lccsanandroidx/core/text/PrecomputedTextCompat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 568
    invoke-virtual {p0}, Lccsanandroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;->call()Lccsanandroidx/core/text/PrecomputedTextCompat;

    move-result-object v0

    return-object v0
.end method
