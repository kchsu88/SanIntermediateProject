.class Lccsancom/google/android/material/resources/TextAppearance$1;
.super Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;
.source "TextAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/resources/TextAppearance;->getFontAsync(Lccsanandroid/content/Context;Lccsancom/google/android/material/resources/TextAppearanceFontCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/resources/TextAppearance;

.field final synthetic val$callback:Lccsancom/google/android/material/resources/TextAppearanceFontCallback;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/resources/TextAppearance;Lccsancom/google/android/material/resources/TextAppearanceFontCallback;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/resources/TextAppearance;

    .line 193
    iput-object p1, p0, Lccsancom/google/android/material/resources/TextAppearance$1;->this$0:Lccsancom/google/android/material/resources/TextAppearance;

    iput-object p2, p0, Lccsancom/google/android/material/resources/TextAppearance$1;->val$callback:Lccsancom/google/android/material/resources/TextAppearanceFontCallback;

    invoke-direct {p0}, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 203
    iget-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance$1;->this$0:Lccsancom/google/android/material/resources/TextAppearance;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/google/android/material/resources/TextAppearance;->access$102(Lccsancom/google/android/material/resources/TextAppearance;Z)Z

    .line 204
    iget-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance$1;->val$callback:Lccsancom/google/android/material/resources/TextAppearanceFontCallback;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/resources/TextAppearanceFontCallback;->onFontRetrievalFailed(I)V

    .line 205
    return-void
.end method

.method public onFontRetrieved(Lccsanandroid/graphics/Typeface;)V
    .locals 3
    .param p1, "typeface"    # Lccsanandroid/graphics/Typeface;

    .line 196
    iget-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance$1;->this$0:Lccsancom/google/android/material/resources/TextAppearance;

    iget v1, v0, Lccsancom/google/android/material/resources/TextAppearance;->textStyle:I

    invoke-static {p1, v1}, Lccsanandroid/graphics/Typeface;->create(Lccsanandroid/graphics/Typeface;I)Lccsanandroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/google/android/material/resources/TextAppearance;->access$002(Lccsancom/google/android/material/resources/TextAppearance;Lccsanandroid/graphics/Typeface;)Lccsanandroid/graphics/Typeface;

    .line 197
    iget-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance$1;->this$0:Lccsancom/google/android/material/resources/TextAppearance;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/google/android/material/resources/TextAppearance;->access$102(Lccsancom/google/android/material/resources/TextAppearance;Z)Z

    .line 198
    iget-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance$1;->val$callback:Lccsancom/google/android/material/resources/TextAppearanceFontCallback;

    iget-object v1, p0, Lccsancom/google/android/material/resources/TextAppearance$1;->this$0:Lccsancom/google/android/material/resources/TextAppearance;

    invoke-static {v1}, Lccsancom/google/android/material/resources/TextAppearance;->access$000(Lccsancom/google/android/material/resources/TextAppearance;)Lccsanandroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsancom/google/android/material/resources/TextAppearanceFontCallback;->onFontRetrieved(Lccsanandroid/graphics/Typeface;Z)V

    .line 199
    return-void
.end method
