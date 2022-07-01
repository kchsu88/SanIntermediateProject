.class Lccsancom/google/android/material/internal/CollapsingTextHelper$2;
.super Ljava/lang/Object;
.source "CollapsingTextHelper.java"

# interfaces
.implements Lccsancom/google/android/material/resources/CancelableFontCallback$ApplyFont;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextAppearance(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/internal/CollapsingTextHelper;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/internal/CollapsingTextHelper;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/internal/CollapsingTextHelper;

    .line 378
    iput-object p1, p0, Lccsancom/google/android/material/internal/CollapsingTextHelper$2;->this$0:Lccsancom/google/android/material/internal/CollapsingTextHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lccsanandroid/graphics/Typeface;)V
    .locals 1
    .param p1, "font"    # Lccsanandroid/graphics/Typeface;

    .line 381
    iget-object v0, p0, Lccsancom/google/android/material/internal/CollapsingTextHelper$2;->this$0:Lccsancom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/internal/CollapsingTextHelper;->setExpandedTypeface(Lccsanandroid/graphics/Typeface;)V

    .line 382
    return-void
.end method
