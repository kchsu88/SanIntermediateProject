.class public Lccsanandroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;
.super Lccsanandroidx/core/provider/FontsContractCompat$FontRequestCallback;
.source "TypefaceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/graphics/TypefaceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourcesCallbackAdapter"
.end annotation


# instance fields
.field private mFontCallback:Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;


# direct methods
.method public constructor <init>(Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;)V
    .locals 0
    .param p1, "fontCallback"    # Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fontCallback"
        }
    .end annotation

    .line 261
    invoke-direct {p0}, Lccsanandroidx/core/provider/FontsContractCompat$FontRequestCallback;-><init>()V

    .line 262
    iput-object p1, p0, Lccsanandroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;->mFontCallback:Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;

    .line 263
    return-void
.end method


# virtual methods
.method public onTypefaceRequestFailed(I)V
    .locals 1
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lccsanandroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;->mFontCallback:Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0, p1}, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrievalFailed(I)V

    .line 277
    :cond_0
    return-void
.end method

.method public onTypefaceRetrieved(Lccsanandroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Lccsanandroid/graphics/Typeface;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeface"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lccsanandroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;->mFontCallback:Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0, p1}, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrieved(Lccsanandroid/graphics/Typeface;)V

    .line 270
    :cond_0
    return-void
.end method
