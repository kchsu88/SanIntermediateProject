.class Lccsanandroidx/fragment/app/FragmentTabHost$DummyTabFactory;
.super Ljava/lang/Object;
.source "FragmentTabHost.java"

# interfaces
.implements Lccsanandroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/fragment/app/FragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DummyTabFactory"
.end annotation


# instance fields
.field private final mContext:Lccsanandroid/content/Context;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lccsanandroidx/fragment/app/FragmentTabHost$DummyTabFactory;->mContext:Lccsanandroid/content/Context;

    .line 78
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Lccsanandroid/view/View;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 82
    new-instance v0, Lccsanandroid/view/View;

    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentTabHost$DummyTabFactory;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v0, v1}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;)V

    .line 83
    .local v0, "v":Lccsanandroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setMinimumWidth(I)V

    .line 84
    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setMinimumHeight(I)V

    .line 85
    return-object v0
.end method