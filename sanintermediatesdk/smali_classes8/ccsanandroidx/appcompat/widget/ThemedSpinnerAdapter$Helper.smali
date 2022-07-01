.class public final Lccsanandroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;
.super Ljava/lang/Object;
.source "ThemedSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ThemedSpinnerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Helper"
.end annotation


# instance fields
.field private final mContext:Lccsanandroid/content/Context;

.field private mDropDownInflater:Lccsanandroid/view/LayoutInflater;

.field private final mInflater:Lccsanandroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;->mContext:Lccsanandroid/content/Context;

    .line 113
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;->mInflater:Lccsanandroid/view/LayoutInflater;

    .line 114
    return-void
.end method


# virtual methods
.method public getDropDownViewInflater()Lccsanandroid/view/LayoutInflater;
    .locals 1

    .line 152
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;->mDropDownInflater:Lccsanandroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;->mInflater:Lccsanandroid/view/LayoutInflater;

    :goto_0
    return-object v0
.end method

.method public getDropDownViewTheme()Lccsanandroid/content/res/Resources$Theme;
    .locals 1

    .line 140
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;->mDropDownInflater:Lccsanandroid/view/LayoutInflater;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lccsanandroid/view/LayoutInflater;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public setDropDownViewTheme(Lccsanandroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "theme"    # Lccsanandroid/content/res/Resources$Theme;

    .line 124
    if-nez p1, :cond_0

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;->mDropDownInflater:Lccsanandroid/view/LayoutInflater;

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 127
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;->mInflater:Lccsanandroid/view/LayoutInflater;

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;->mDropDownInflater:Lccsanandroid/view/LayoutInflater;

    goto :goto_0

    .line 129
    :cond_1
    new-instance v0, Lccsanandroidx/appcompat/view/ContextThemeWrapper;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v0, v1, p1}, Lccsanandroidx/appcompat/view/ContextThemeWrapper;-><init>(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources$Theme;)V

    .line 130
    .local v0, "context":Lccsanandroid/content/Context;
    invoke-static {v0}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/ThemedSpinnerAdapter$Helper;->mDropDownInflater:Lccsanandroid/view/LayoutInflater;

    .line 132
    .end local v0    # "context":Lccsanandroid/content/Context;
    :goto_0
    return-void
.end method
