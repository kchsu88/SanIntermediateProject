.class Lccsancom/google/android/material/resources/TextAppearance$2;
.super Lccsancom/google/android/material/resources/TextAppearanceFontCallback;
.source "TextAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/resources/TextAppearance;->getFontAsync(Lccsanandroid/content/Context;Lccsanandroid/text/TextPaint;Lccsancom/google/android/material/resources/TextAppearanceFontCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/resources/TextAppearance;

.field final synthetic val$callback:Lccsancom/google/android/material/resources/TextAppearanceFontCallback;

.field final synthetic val$textPaint:Lccsanandroid/text/TextPaint;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/resources/TextAppearance;Lccsanandroid/text/TextPaint;Lccsancom/google/android/material/resources/TextAppearanceFontCallback;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/resources/TextAppearance;

    .line 238
    iput-object p1, p0, Lccsancom/google/android/material/resources/TextAppearance$2;->this$0:Lccsancom/google/android/material/resources/TextAppearance;

    iput-object p2, p0, Lccsancom/google/android/material/resources/TextAppearance$2;->val$textPaint:Lccsanandroid/text/TextPaint;

    iput-object p3, p0, Lccsancom/google/android/material/resources/TextAppearance$2;->val$callback:Lccsancom/google/android/material/resources/TextAppearanceFontCallback;

    invoke-direct {p0}, Lccsancom/google/android/material/resources/TextAppearanceFontCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .locals 1
    .param p1, "i"    # I

    .line 248
    iget-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance$2;->val$callback:Lccsancom/google/android/material/resources/TextAppearanceFontCallback;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/resources/TextAppearanceFontCallback;->onFontRetrievalFailed(I)V

    .line 249
    return-void
.end method

.method public onFontRetrieved(Lccsanandroid/graphics/Typeface;Z)V
    .locals 2
    .param p1, "typeface"    # Lccsanandroid/graphics/Typeface;
    .param p2, "fontResolvedSynchronously"    # Z

    .line 242
    iget-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance$2;->this$0:Lccsancom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lccsancom/google/android/material/resources/TextAppearance$2;->val$textPaint:Lccsanandroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Lccsancom/google/android/material/resources/TextAppearance;->updateTextPaintMeasureState(Lccsanandroid/text/TextPaint;Lccsanandroid/graphics/Typeface;)V

    .line 243
    iget-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance$2;->val$callback:Lccsancom/google/android/material/resources/TextAppearanceFontCallback;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/material/resources/TextAppearanceFontCallback;->onFontRetrieved(Lccsanandroid/graphics/Typeface;Z)V

    .line 244
    return-void
.end method
