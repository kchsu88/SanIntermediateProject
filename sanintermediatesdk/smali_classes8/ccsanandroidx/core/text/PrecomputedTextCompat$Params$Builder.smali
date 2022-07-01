.class public Lccsanandroidx/core/text/PrecomputedTextCompat$Params$Builder;
.super Ljava/lang/Object;
.source "PrecomputedTextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/text/PrecomputedTextCompat$Params;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBreakStrategy:I

.field private mHyphenationFrequency:I

.field private final mPaint:Lccsanandroid/text/TextPaint;

.field private mTextDir:Lccsanandroid/text/TextDirectionHeuristic;


# direct methods
.method public constructor <init>(Lccsanandroid/text/TextPaint;)V
    .locals 2
    .param p1, "paint"    # Lccsanandroid/text/TextPaint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paint"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lccsanandroidx/core/text/PrecomputedTextCompat$Params$Builder;->mPaint:Lccsanandroid/text/TextPaint;

    .line 118
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 119
    const/4 v0, 0x1

    iput v0, p0, Lccsanandroidx/core/text/PrecomputedTextCompat$Params$Builder;->mBreakStrategy:I

    .line 120
    iput v0, p0, Lccsanandroidx/core/text/PrecomputedTextCompat$Params$Builder;->mHyphenationFrequency:I

    goto :goto_0

    .line 122
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/core/text/PrecomputedTextCompat$Params$Builder;->mHyphenationFrequency:I

    iput v0, p0, Lccsanandroidx/core/text/PrecomputedTextCompat$Params$Builder;->mBreakStrategy:I

    .line 124
    :goto_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 125
    sget-object v0, Lccsanandroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Lccsanandroid/text/TextDirectionHeuristic;

    iput-object v0, p0, Lccsanandroidx/core/text/PrecomputedTextCompat$Params$Builder;->mTextDir:Lccsanandroid/text/TextDirectionHeuristic;

    goto :goto_1

    .line 127
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/core/text/PrecomputedTextCompat$Params$Builder;->mTextDir:Lccsanandroid/text/TextDirectionHeuristic;

    .line 129
    :goto_1
    return-void
.end method


# virtual methods
.method public build()Lccsanandroidx/core/text/PrecomputedTextCompat$Params;
    .locals 5

    .line 191
    new-instance v0, Lccsanandroidx/core/text/PrecomputedTextCompat$Params;

    iget-object v1, p0, Lccsanandroidx/core/text/PrecomputedTextCompat$Params$Builder;->mPaint:Lccsanandroid/text/TextPaint;

    iget-object v2, p0, Lccsanandroidx/core/text/PrecomputedTextCompat$Params$Builder;->mTextDir:Lccsanandroid/text/TextDirectionHeuristic;

    iget v3, p0, Lccsanandroidx/core/text/PrecomputedTextCompat$Params$Builder;->mBreakStrategy:I

    iget v4, p0, Lccsanandroidx/core/text/PrecomputedTextCompat$Params$Builder;->mHyphenationFrequency:I

    invoke-direct {v0, v1, v2, v3, v4}, Lccsanandroidx/core/text/PrecomputedTextCompat$Params;-><init>(Lccsanandroid/text/TextPaint;Lccsanandroid/text/TextDirectionHeuristic;II)V

    return-object v0
.end method

.method public setBreakStrategy(I)Lccsanandroidx/core/text/PrecomputedTextCompat$Params$Builder;
    .locals 0
    .param p1, "strategy"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy"
        }
    .end annotation

    .line 145
    iput p1, p0, Lccsanandroidx/core/text/PrecomputedTextCompat$Params$Builder;->mBreakStrategy:I

    .line 146
    return-object p0
.end method

.method public setHyphenationFrequency(I)Lccsanandroidx/core/text/PrecomputedTextCompat$Params$Builder;
    .locals 0
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frequency"
        }
    .end annotation

    .line 163
    iput p1, p0, Lccsanandroidx/core/text/PrecomputedTextCompat$Params$Builder;->mHyphenationFrequency:I

    .line 164
    return-object p0
.end method

.method public setTextDirection(Lccsanandroid/text/TextDirectionHeuristic;)Lccsanandroidx/core/text/PrecomputedTextCompat$Params$Builder;
    .locals 0
    .param p1, "textDir"    # Lccsanandroid/text/TextDirectionHeuristic;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textDir"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lccsanandroidx/core/text/PrecomputedTextCompat$Params$Builder;->mTextDir:Lccsanandroid/text/TextDirectionHeuristic;

    .line 182
    return-object p0
.end method
