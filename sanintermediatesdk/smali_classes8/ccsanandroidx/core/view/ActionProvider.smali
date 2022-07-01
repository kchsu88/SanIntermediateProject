.class public abstract Lccsanandroidx/core/view/ActionProvider;
.super Ljava/lang/Object;
.source "ActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/view/ActionProvider$VisibilityListener;,
        Lccsanandroidx/core/view/ActionProvider$SubUiVisibilityListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionProvider(support)"


# instance fields
.field private final mContext:Lccsanandroid/content/Context;

.field private mSubUiVisibilityListener:Lccsanandroidx/core/view/ActionProvider$SubUiVisibilityListener;

.field private mVisibilityListener:Lccsanandroidx/core/view/ActionProvider$VisibilityListener;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lccsanandroidx/core/view/ActionProvider;->mContext:Lccsanandroid/content/Context;

    .line 135
    return-void
.end method


# virtual methods
.method public getContext()Lccsanandroid/content/Context;
    .locals 1

    .line 141
    iget-object v0, p0, Lccsanandroidx/core/view/ActionProvider;->mContext:Lccsanandroid/content/Context;

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onCreateActionView()Lccsanandroid/view/View;
.end method

.method public onCreateActionView(Lccsanandroid/view/MenuItem;)Lccsanandroid/view/View;
    .locals 1
    .param p1, "forItem"    # Lccsanandroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forItem"
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lccsanandroidx/core/view/ActionProvider;->onCreateActionView()Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareSubMenu(Lccsanandroid/view/SubMenu;)V
    .locals 0
    .param p1, "subMenu"    # Lccsanandroid/view/SubMenu;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subMenu"
        }
    .end annotation

    .line 263
    return-void
.end method

.method public overridesItemVisibility()Z
    .locals 1

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public refreshVisibility()V
    .locals 2

    .line 200
    iget-object v0, p0, Lccsanandroidx/core/view/ActionProvider;->mVisibilityListener:Lccsanandroidx/core/view/ActionProvider$VisibilityListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsanandroidx/core/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lccsanandroidx/core/view/ActionProvider;->mVisibilityListener:Lccsanandroidx/core/view/ActionProvider$VisibilityListener;

    invoke-virtual {p0}, Lccsanandroidx/core/view/ActionProvider;->isVisible()Z

    move-result v1

    invoke-interface {v0, v1}, Lccsanandroidx/core/view/ActionProvider$VisibilityListener;->onActionProviderVisibilityChanged(Z)V

    .line 203
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/core/view/ActionProvider;->mVisibilityListener:Lccsanandroidx/core/view/ActionProvider$VisibilityListener;

    .line 307
    iput-object v0, p0, Lccsanandroidx/core/view/ActionProvider;->mSubUiVisibilityListener:Lccsanandroidx/core/view/ActionProvider$SubUiVisibilityListener;

    .line 308
    return-void
.end method

.method public setSubUiVisibilityListener(Lccsanandroidx/core/view/ActionProvider$SubUiVisibilityListener;)V
    .locals 0
    .param p1, "listener"    # Lccsanandroidx/core/view/ActionProvider$SubUiVisibilityListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 283
    iput-object p1, p0, Lccsanandroidx/core/view/ActionProvider;->mSubUiVisibilityListener:Lccsanandroidx/core/view/ActionProvider$SubUiVisibilityListener;

    .line 284
    return-void
.end method

.method public setVisibilityListener(Lccsanandroidx/core/view/ActionProvider$VisibilityListener;)V
    .locals 2
    .param p1, "listener"    # Lccsanandroidx/core/view/ActionProvider$VisibilityListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lccsanandroidx/core/view/ActionProvider;->mVisibilityListener:Lccsanandroidx/core/view/ActionProvider$VisibilityListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " instance while it is still in use somewhere else?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    const-string v1, "ActionProvider(support)"

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    iput-object p1, p0, Lccsanandroidx/core/view/ActionProvider;->mVisibilityListener:Lccsanandroidx/core/view/ActionProvider$VisibilityListener;

    .line 299
    return-void
.end method

.method public subUiVisibilityChanged(Z)V
    .locals 1
    .param p1, "isVisible"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisible"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lccsanandroidx/core/view/ActionProvider;->mSubUiVisibilityListener:Lccsanandroidx/core/view/ActionProvider$SubUiVisibilityListener;

    if-eqz v0, :cond_0

    .line 274
    invoke-interface {v0, p1}, Lccsanandroidx/core/view/ActionProvider$SubUiVisibilityListener;->onSubUiVisibilityChanged(Z)V

    .line 276
    :cond_0
    return-void
.end method
