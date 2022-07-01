.class public Lccsanandroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;
.super Ljava/lang/Object;
.source "SupportActionModeWrapper.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/view/SupportActionModeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackWrapper"
.end annotation


# instance fields
.field final mActionModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsanandroidx/appcompat/view/SupportActionModeWrapper;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Lccsanandroid/content/Context;

.field final mMenus:Lccsanandroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/collection/SimpleArrayMap<",
            "Lccsanandroid/view/Menu;",
            "Lccsanandroid/view/Menu;",
            ">;"
        }
    .end annotation
.end field

.field final mWrappedCallback:Lccsanandroid/view/ActionMode$Callback;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "supportCallback"    # Lccsanandroid/view/ActionMode$Callback;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mContext:Lccsanandroid/content/Context;

    .line 152
    iput-object p2, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Lccsanandroid/view/ActionMode$Callback;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mActionModes:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Lccsanandroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Lccsanandroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mMenus:Lccsanandroidx/collection/SimpleArrayMap;

    .line 155
    return-void
.end method

.method private getMenuWrapper(Lccsanandroid/view/Menu;)Lccsanandroid/view/Menu;
    .locals 4
    .param p1, "menu"    # Lccsanandroid/view/Menu;

    .line 182
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mMenus:Lccsanandroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Lccsanandroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/Menu;

    .line 183
    .local v0, "wrapper":Lccsanandroid/view/Menu;
    if-nez v0, :cond_0

    .line 184
    new-instance v1, Lccsanandroidx/appcompat/view/menu/MenuWrapperICS;

    iget-object v2, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mContext:Lccsanandroid/content/Context;

    move-object v3, p1

    check-cast v3, Lccsanandroidx/core/internal/view/SupportMenu;

    invoke-direct {v1, v2, v3}, Lccsanandroidx/appcompat/view/menu/MenuWrapperICS;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/core/internal/view/SupportMenu;)V

    move-object v0, v1

    .line 185
    iget-object v1, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mMenus:Lccsanandroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Lccsanandroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getActionModeWrapper(Lccsanandroidx/appcompat/view/ActionMode;)Lccsanandroid/view/ActionMode;
    .locals 4
    .param p1, "mode"    # Lccsanandroidx/appcompat/view/ActionMode;

    .line 192
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mActionModes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 193
    iget-object v2, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mActionModes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/appcompat/view/SupportActionModeWrapper;

    .line 194
    .local v2, "wrapper":Lccsanandroidx/appcompat/view/SupportActionModeWrapper;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lccsanandroidx/appcompat/view/SupportActionModeWrapper;->mWrappedObject:Lccsanandroidx/appcompat/view/ActionMode;

    if-ne v3, p1, :cond_0

    .line 196
    return-object v2

    .line 192
    .end local v2    # "wrapper":Lccsanandroidx/appcompat/view/SupportActionModeWrapper;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    new-instance v0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper;

    iget-object v1, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v0, v1, p1}, Lccsanandroidx/appcompat/view/SupportActionModeWrapper;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/ActionMode;)V

    .line 203
    .local v0, "wrapper":Lccsanandroidx/appcompat/view/SupportActionModeWrapper;
    iget-object v1, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mActionModes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    return-object v0
.end method

.method public onActionItemClicked(Lccsanandroidx/appcompat/view/ActionMode;Lccsanandroid/view/MenuItem;)Z
    .locals 5
    .param p1, "mode"    # Lccsanandroidx/appcompat/view/ActionMode;
    .param p2, "item"    # Lccsanandroid/view/MenuItem;

    .line 172
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Lccsanandroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Lccsanandroidx/appcompat/view/ActionMode;)Lccsanandroid/view/ActionMode;

    move-result-object v1

    new-instance v2, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;

    iget-object v3, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mContext:Lccsanandroid/content/Context;

    move-object v4, p2

    check-cast v4, Lccsanandroidx/core/internal/view/SupportMenuItem;

    invoke-direct {v2, v3, v4}, Lccsanandroidx/appcompat/view/menu/MenuItemWrapperICS;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/core/internal/view/SupportMenuItem;)V

    invoke-interface {v0, v1, v2}, Lccsanandroid/view/ActionMode$Callback;->onActionItemClicked(Lccsanandroid/view/ActionMode;Lccsanandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Lccsanandroidx/appcompat/view/ActionMode;Lccsanandroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Lccsanandroidx/appcompat/view/ActionMode;
    .param p2, "menu"    # Lccsanandroid/view/Menu;

    .line 159
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Lccsanandroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Lccsanandroidx/appcompat/view/ActionMode;)Lccsanandroid/view/ActionMode;

    move-result-object v1

    .line 160
    invoke-direct {p0, p2}, Lccsanandroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->getMenuWrapper(Lccsanandroid/view/Menu;)Lccsanandroid/view/Menu;

    move-result-object v2

    .line 159
    invoke-interface {v0, v1, v2}, Lccsanandroid/view/ActionMode$Callback;->onCreateActionMode(Lccsanandroid/view/ActionMode;Lccsanandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Lccsanandroidx/appcompat/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Lccsanandroidx/appcompat/view/ActionMode;

    .line 178
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Lccsanandroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Lccsanandroidx/appcompat/view/ActionMode;)Lccsanandroid/view/ActionMode;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsanandroid/view/ActionMode$Callback;->onDestroyActionMode(Lccsanandroid/view/ActionMode;)V

    .line 179
    return-void
.end method

.method public onPrepareActionMode(Lccsanandroidx/appcompat/view/ActionMode;Lccsanandroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Lccsanandroidx/appcompat/view/ActionMode;
    .param p2, "menu"    # Lccsanandroid/view/Menu;

    .line 165
    iget-object v0, p0, Lccsanandroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Lccsanandroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Lccsanandroidx/appcompat/view/ActionMode;)Lccsanandroid/view/ActionMode;

    move-result-object v1

    .line 166
    invoke-direct {p0, p2}, Lccsanandroidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper;->getMenuWrapper(Lccsanandroid/view/Menu;)Lccsanandroid/view/Menu;

    move-result-object v2

    .line 165
    invoke-interface {v0, v1, v2}, Lccsanandroid/view/ActionMode$Callback;->onPrepareActionMode(Lccsanandroid/view/ActionMode;Lccsanandroid/view/Menu;)Z

    move-result v0

    return v0
.end method
