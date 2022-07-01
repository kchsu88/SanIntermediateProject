.class public abstract Lccsanandroidx/fragment/app/FragmentContainer;
.super Ljava/lang/Object;
.source "FragmentContainer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public instantiate(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/os/Bundle;)Lccsanandroidx/fragment/app/Fragment;
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "arguments"    # Lccsanandroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    invoke-static {p1, p2, p3}, Lccsanandroidx/fragment/app/Fragment;->instantiate(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/os/Bundle;)Lccsanandroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public abstract onFindViewById(I)Lccsanandroid/view/View;
.end method

.method public abstract onHasView()Z
.end method
