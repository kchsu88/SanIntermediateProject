.class public final Lccsancom/google/android/material/resources/CancelableFontCallback;
.super Lccsancom/google/android/material/resources/TextAppearanceFontCallback;
.source "CancelableFontCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/resources/CancelableFontCallback$ApplyFont;
    }
.end annotation


# instance fields
.field private final applyFont:Lccsancom/google/android/material/resources/CancelableFontCallback$ApplyFont;

.field private cancelled:Z

.field private final fallbackFont:Lccsanandroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lccsancom/google/android/material/resources/CancelableFontCallback$ApplyFont;Lccsanandroid/graphics/Typeface;)V
    .locals 0
    .param p1, "applyFont"    # Lccsancom/google/android/material/resources/CancelableFontCallback$ApplyFont;
    .param p2, "fallbackFont"    # Lccsanandroid/graphics/Typeface;

    .line 42
    invoke-direct {p0}, Lccsancom/google/android/material/resources/TextAppearanceFontCallback;-><init>()V

    .line 43
    iput-object p2, p0, Lccsancom/google/android/material/resources/CancelableFontCallback;->fallbackFont:Lccsanandroid/graphics/Typeface;

    .line 44
    iput-object p1, p0, Lccsancom/google/android/material/resources/CancelableFontCallback;->applyFont:Lccsancom/google/android/material/resources/CancelableFontCallback$ApplyFont;

    .line 45
    return-void
.end method

.method private updateIfNotCancelled(Lccsanandroid/graphics/Typeface;)V
    .locals 1
    .param p1, "updatedFont"    # Lccsanandroid/graphics/Typeface;

    .line 68
    iget-boolean v0, p0, Lccsancom/google/android/material/resources/CancelableFontCallback;->cancelled:Z

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lccsancom/google/android/material/resources/CancelableFontCallback;->applyFont:Lccsancom/google/android/material/resources/CancelableFontCallback$ApplyFont;

    invoke-interface {v0, p1}, Lccsancom/google/android/material/resources/CancelableFontCallback$ApplyFont;->apply(Lccsanandroid/graphics/Typeface;)V

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/resources/CancelableFontCallback;->cancelled:Z

    .line 65
    return-void
.end method

.method public onFontRetrievalFailed(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 54
    iget-object v0, p0, Lccsancom/google/android/material/resources/CancelableFontCallback;->fallbackFont:Lccsanandroid/graphics/Typeface;

    invoke-direct {p0, v0}, Lccsancom/google/android/material/resources/CancelableFontCallback;->updateIfNotCancelled(Lccsanandroid/graphics/Typeface;)V

    .line 55
    return-void
.end method

.method public onFontRetrieved(Lccsanandroid/graphics/Typeface;Z)V
    .locals 0
    .param p1, "font"    # Lccsanandroid/graphics/Typeface;
    .param p2, "fontResolvedSynchronously"    # Z

    .line 49
    invoke-direct {p0, p1}, Lccsancom/google/android/material/resources/CancelableFontCallback;->updateIfNotCancelled(Lccsanandroid/graphics/Typeface;)V

    .line 50
    return-void
.end method
