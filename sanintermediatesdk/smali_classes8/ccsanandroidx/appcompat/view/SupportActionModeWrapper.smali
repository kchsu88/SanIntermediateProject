.class public Lccsanandroidx/appcompat/view/SupportActionModeWrapper;
.super Lccsanandroid/view/ActionMode;
.source "SupportActionModeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;
    }
.end annotation


# instance fields
.field final mContext:Lccsanandroid/content/Context;

.field final mWrappedObject:Lccsanandroidx/appcompat/view/ActionMode;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/ActionMode;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "supportActionMode"    # Lccsanandroidx/appcompat/view/ActionMode;

    .line 49
    invoke-direct {p0}, Lccsanandroid/view/ActionMode;-><init>()V

    .line 50
    iput-object p1, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper;->mContext:Lccsanandroid/content/Context;

    .line 51
    iput-object p2, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Lccsanandroidx/appcompat/view/ActionMode;

    .line 52
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 81
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Lccsanandroidx/appcompat/view/ActionMode;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/ActionMode;->finish()V

    .line 82
    return-void
.end method

.method public getCustomView()Lccsanandroid/view/View;
    .locals 1

    .line 111
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Lccsanandroidx/appcompat/view/ActionMode;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/ActionMode;->getCustomView()Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Lccsanandroid/view/Menu;
    .locals 3

    .line 86
    new-instance v0, Lccsanandroidx/appcompat/view/menu/MenuWrapperICS;

    iget-object v1, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper;->mContext:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Lccsanandroidx/appcompat/view/ActionMode;

    invoke-virtual {v2}, Lccsanandroidx/appcompat/view/ActionMode;->getMenu()Lccsanandroid/view/Menu;

    move-result-object v2

    check-cast v2, Lccsanandroidx/core/internal/view/SupportMenu;

    invoke-direct {v0, v1, v2}, Lccsanandroidx/appcompat/view/menu/MenuWrapperICS;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/core/internal/view/SupportMenu;)V

    return-object v0
.end method

.method public getMenuInflater()Lccsanandroid/view/MenuInflater;
    .locals 1

    .line 121
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Lccsanandroidx/appcompat/view/ActionMode;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/ActionMode;->getMenuInflater()Lccsanandroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 101
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Lccsanandroidx/appcompat/view/ActionMode;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/ActionMode;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 56
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Lccsanandroidx/appcompat/view/ActionMode;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/ActionMode;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 91
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Lccsanandroidx/appcompat/view/ActionMode;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/ActionMode;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleOptionalHint()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Lccsanandroidx/appcompat/view/ActionMode;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/ActionMode;->getTitleOptionalHint()Z

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 76
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Lccsanandroidx/appcompat/view/ActionMode;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/ActionMode;->invalidate()V

    .line 77
    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Lccsanandroidx/appcompat/view/ActionMode;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/ActionMode;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public setCustomView(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 116
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Lccsanandroidx/appcompat/view/ActionMode;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/view/ActionMode;->setCustomView(Lccsanandroid/view/View;)V

    .line 117
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 106
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Lccsanandroidx/appcompat/view/ActionMode;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/view/ActionMode;->setSubtitle(I)V

    .line 107
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 71
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Lccsanandroidx/appcompat/view/ActionMode;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Lccsanandroidx/appcompat/view/ActionMode;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/view/ActionMode;->setTag(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 96
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Lccsanandroidx/appcompat/view/ActionMode;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/view/ActionMode;->setTitle(I)V

    .line 97
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 66
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Lccsanandroidx/appcompat/view/ActionMode;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .line 131
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Lccsanandroidx/appcompat/view/ActionMode;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 132
    return-void
.end method
