.class final Lccsanandroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;
.super Ljava/lang/Object;
.source "SuggestionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/SuggestionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChildViewCache"
.end annotation


# instance fields
.field public final mIcon1:Lccsanandroid/widget/ImageView;

.field public final mIcon2:Lccsanandroid/widget/ImageView;

.field public final mIconRefine:Lccsanandroid/widget/ImageView;

.field public final mText1:Lccsanandroid/widget/TextView;

.field public final mText2:Lccsanandroid/widget/TextView;


# direct methods
.method public constructor <init>(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/TextView;

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Lccsanandroid/widget/TextView;

    .line 265
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/TextView;

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText2:Lccsanandroid/widget/TextView;

    .line 266
    const v0, 0x1020007

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Lccsanandroid/widget/ImageView;

    .line 267
    const v0, 0x1020008

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Lccsanandroid/widget/ImageView;

    .line 268
    sget v0, Lccsanandroidx/appcompat/R$id;->edit_query:I

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Lccsanandroid/widget/ImageView;

    .line 269
    return-void
.end method
