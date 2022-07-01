.class public Lccsanandroidx/core/content/pm/ShortcutManagerCompat;
.super Ljava/lang/Object;
.source "ShortcutManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/content/pm/ShortcutManagerCompat$Api25Impl;,
        Lccsanandroidx/core/content/pm/ShortcutManagerCompat$ShortcutMatchFlags;
    }
.end annotation


# static fields
.field static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final DEFAULT_MAX_ICON_DIMENSION_DP:I = 0x60

.field private static final DEFAULT_MAX_ICON_DIMENSION_LOWRAM_DP:I = 0x30

.field public static final EXTRA_SHORTCUT_ID:Ljava/lang/String; = "android.intent.extra.shortcut.ID"

.field public static final FLAG_MATCH_CACHED:I = 0x8

.field public static final FLAG_MATCH_DYNAMIC:I = 0x2

.field public static final FLAG_MATCH_MANIFEST:I = 0x1

.field public static final FLAG_MATCH_PINNED:I = 0x4

.field static final INSTALL_SHORTCUT_PERMISSION:Ljava/lang/String; = "com.android.launcher.permission.INSTALL_SHORTCUT"

.field private static final SHORTCUT_LISTENER_INTENT_FILTER_ACTION:Ljava/lang/String; = "androidx.core.content.pm.SHORTCUT_LISTENER"

.field private static final SHORTCUT_LISTENER_META_DATA_KEY:Ljava/lang/String; = "androidx.core.content.pm.shortcut_listener_impl"

.field private static volatile sShortcutInfoChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sShortcutInfoCompatSaver:Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    const/4 v0, 0x0

    sput-object v0, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 137
    sput-object v0, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method

.method public static addDynamicShortcuts(Lccsanandroid/content/Context;Ljava/util/List;)Z
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "shortcutInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/util/List<",
            "Lccsanandroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)Z"
        }
    .end annotation

    .line 316
    .local p1, "shortcutInfoList":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/content/pm/ShortcutInfoCompat;>;"
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    .line 317
    invoke-static {p0, p1}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->convertUriIconsToBitmapIcons(Lccsanandroid/content/Context;Ljava/util/List;)V

    .line 319
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_2

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v0, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/content/pm/ShortcutInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;

    .line 322
    .local v2, "item":Lccsanandroidx/core/content/pm/ShortcutInfoCompat;
    invoke-virtual {v2}, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Lccsanandroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    .end local v2    # "item":Lccsanandroidx/core/content/pm/ShortcutInfoCompat;
    goto :goto_0

    .line 324
    :cond_1
    const-class v1, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {v1, v0}, Lccsanandroid/content/pm/ShortcutManager;->addDynamicShortcuts(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 325
    const/4 v1, 0x0

    return v1

    .line 329
    .end local v0    # "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/content/pm/ShortcutInfo;>;"
    :cond_2
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Lccsanandroid/content/Context;)Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;->addShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 330
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Lccsanandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 331
    .local v1, "listener":Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;
    invoke-virtual {v1, p1}, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    .line 332
    .end local v1    # "listener":Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;
    goto :goto_1

    .line 333
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method static convertUriIconToBitmapIcon(Lccsanandroid/content/Context;Lccsanandroidx/core/content/pm/ShortcutInfoCompat;)Z
    .locals 6
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "info"    # Lccsanandroidx/core/content/pm/ShortcutInfoCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "info"
        }
    .end annotation

    .line 534
    iget-object v0, p1, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 535
    return v1

    .line 537
    :cond_0
    iget-object v0, p1, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    iget v0, v0, Lccsanandroidx/core/graphics/drawable/IconCompat;->mType:I

    .line 538
    .local v0, "type":I
    const/4 v2, 0x1

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    .line 539
    return v2

    .line 541
    :cond_1
    iget-object v4, p1, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v4, p0}, Lccsanandroidx/core/graphics/drawable/IconCompat;->getUriInputStream(Lccsanandroid/content/Context;)Ljava/io/InputStream;

    move-result-object v4

    .line 542
    .local v4, "is":Ljava/io/InputStream;
    if-nez v4, :cond_2

    .line 543
    return v1

    .line 545
    :cond_2
    invoke-static {v4}, Lccsanandroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Lccsanandroid/graphics/Bitmap;

    move-result-object v5

    .line 546
    .local v5, "bitmap":Lccsanandroid/graphics/Bitmap;
    if-nez v5, :cond_3

    .line 547
    return v1

    .line 549
    :cond_3
    if-ne v0, v3, :cond_4

    .line 550
    invoke-static {v5}, Lccsanandroidx/core/graphics/drawable/IconCompat;->createWithAdaptiveBitmap(Lccsanandroid/graphics/Bitmap;)Lccsanandroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    goto :goto_0

    .line 551
    :cond_4
    invoke-static {v5}, Lccsanandroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Lccsanandroid/graphics/Bitmap;)Lccsanandroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    :goto_0
    iput-object v1, p1, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Lccsanandroidx/core/graphics/drawable/IconCompat;

    .line 552
    return v2
.end method

.method static convertUriIconsToBitmapIcons(Lccsanandroid/content/Context;Ljava/util/List;)V
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "shortcutInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/util/List<",
            "Lccsanandroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)V"
        }
    .end annotation

    .line 558
    .local p1, "shortcutInfoList":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/content/pm/ShortcutInfoCompat;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 559
    .local v0, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/content/pm/ShortcutInfoCompat;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;

    .line 560
    .local v2, "info":Lccsanandroidx/core/content/pm/ShortcutInfoCompat;
    invoke-static {p0, v2}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->convertUriIconToBitmapIcon(Lccsanandroid/content/Context;Lccsanandroidx/core/content/pm/ShortcutInfoCompat;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 561
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 563
    .end local v2    # "info":Lccsanandroidx/core/content/pm/ShortcutInfoCompat;
    :cond_0
    goto :goto_0

    .line 564
    :cond_1
    return-void
.end method

.method public static createShortcutResultIntent(Lccsanandroid/content/Context;Lccsanandroidx/core/content/pm/ShortcutInfoCompat;)Lccsanandroid/content/Intent;
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "shortcut"    # Lccsanandroidx/core/content/pm/ShortcutInfoCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "shortcut"
        }
    .end annotation

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "result":Lccsanandroid/content/Intent;
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 235
    const-class v1, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/pm/ShortcutManager;

    .line 236
    invoke-virtual {p1}, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Lccsanandroid/content/pm/ShortcutInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroid/content/pm/ShortcutManager;->createShortcutResultIntent(Lccsanandroid/content/pm/ShortcutInfo;)Lccsanandroid/content/Intent;

    move-result-object v0

    .line 238
    :cond_0
    if-nez v0, :cond_1

    .line 239
    new-instance v1, Lccsanandroid/content/Intent;

    invoke-direct {v1}, Lccsanandroid/content/Intent;-><init>()V

    move-object v0, v1

    .line 241
    :cond_1
    invoke-virtual {p1, v0}, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->addToIntent(Lccsanandroid/content/Intent;)Lccsanandroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static disableShortcuts(Lccsanandroid/content/Context;Ljava/util/List;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p2, "disabledMessage"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "shortcutIds",
            "disabledMessage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 585
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 586
    const-class v0, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/ShortcutManager;

    .line 587
    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/pm/ShortcutManager;->disableShortcuts(Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 590
    :cond_0
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Lccsanandroid/content/Context;)Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;->removeShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 591
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Lccsanandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 592
    .local v1, "listener":Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;
    invoke-virtual {v1, p1}, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutRemoved(Ljava/util/List;)V

    .line 593
    .end local v1    # "listener":Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;
    goto :goto_0

    .line 594
    :cond_1
    return-void
.end method

.method public static enableShortcuts(Lccsanandroid/content/Context;Ljava/util/List;)V
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "shortcutInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/util/List<",
            "Lccsanandroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)V"
        }
    .end annotation

    .line 612
    .local p1, "shortcutInfoList":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/content/pm/ShortcutInfoCompat;>;"
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_1

    .line 613
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 614
    .local v0, "shortcutIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;

    .line 615
    .local v2, "shortcut":Lccsanandroidx/core/content/pm/ShortcutInfoCompat;
    iget-object v3, v2, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    .end local v2    # "shortcut":Lccsanandroidx/core/content/pm/ShortcutInfoCompat;
    goto :goto_0

    .line 617
    :cond_0
    const-class v1, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {v1, v0}, Lccsanandroid/content/pm/ShortcutManager;->enableShortcuts(Ljava/util/List;)V

    .line 620
    .end local v0    # "shortcutIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Lccsanandroid/content/Context;)Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;->addShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 621
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Lccsanandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 622
    .local v1, "listener":Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;
    invoke-virtual {v1, p1}, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    .line 623
    .end local v1    # "listener":Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;
    goto :goto_1

    .line 624
    :cond_2
    return-void
.end method

.method public static getDynamicShortcuts(Lccsanandroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lccsanandroidx/core/content/pm/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .line 479
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_1

    .line 480
    const-class v0, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/ShortcutManager;

    .line 481
    invoke-virtual {v0}, Lccsanandroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object v0

    .line 482
    .local v0, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/content/pm/ShortcutInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 483
    .local v1, "compats":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/content/pm/ShortcutInfoCompat;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/content/pm/ShortcutInfo;

    .line 484
    .local v3, "item":Lccsanandroid/content/pm/ShortcutInfo;
    new-instance v4, Lccsanandroidx/core/content/pm/ShortcutInfoCompat$Builder;

    invoke-direct {v4, p0, v3}, Lccsanandroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Lccsanandroid/content/Context;Lccsanandroid/content/pm/ShortcutInfo;)V

    invoke-virtual {v4}, Lccsanandroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Lccsanandroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    .end local v3    # "item":Lccsanandroid/content/pm/ShortcutInfo;
    goto :goto_0

    .line 486
    :cond_0
    return-object v1

    .line 490
    .end local v0    # "shortcuts":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/content/pm/ShortcutInfo;>;"
    .end local v1    # "compats":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/content/pm/ShortcutInfoCompat;>;"
    :cond_1
    :try_start_0
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Lccsanandroid/content/Context;)Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;->getShortcuts()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 491
    :catch_0
    move-exception v0

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static getIconDimensionInternal(Lccsanandroid/content/Context;Z)I
    .locals 6
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "isHorizontal"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "isHorizontal"
        }
    .end annotation

    .line 798
    nop

    .line 799
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/ActivityManager;

    .line 800
    .local v0, "am":Lccsanandroid/app/ActivityManager;
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x13

    if-lt v1, v3, :cond_1

    if-eqz v0, :cond_1

    .line 801
    invoke-virtual {v0}, Lccsanandroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 802
    .local v1, "isLowRamDevice":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 803
    const/16 v3, 0x30

    goto :goto_2

    :cond_2
    const/16 v3, 0x60

    .line 802
    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 804
    .local v2, "iconDimensionDp":I
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v3

    .line 805
    .local v3, "displayMetrics":Lccsanandroid/util/DisplayMetrics;
    if-eqz p1, :cond_3

    iget v4, v3, Lccsanandroid/util/DisplayMetrics;->xdpi:F

    goto :goto_3

    :cond_3
    iget v4, v3, Lccsanandroid/util/DisplayMetrics;->ydpi:F

    :goto_3
    const/high16 v5, 0x43200000    # 160.0f

    div-float/2addr v4, v5

    .line 807
    .local v4, "density":F
    int-to-float v5, v2

    mul-float v5, v5, v4

    float-to-int v5, v5

    return v5
.end method

.method public static getIconMaxHeight(Lccsanandroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 389
    invoke-static {p0}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 391
    const-class v0, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {v0}, Lccsanandroid/content/pm/ShortcutManager;->getIconMaxHeight()I

    move-result v0

    return v0

    .line 393
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getIconDimensionInternal(Lccsanandroid/content/Context;Z)I

    move-result v0

    return v0
.end method

.method public static getIconMaxWidth(Lccsanandroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 378
    invoke-static {p0}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 380
    const-class v0, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {v0}, Lccsanandroid/content/pm/ShortcutManager;->getIconMaxWidth()I

    move-result v0

    return v0

    .line 382
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getIconDimensionInternal(Lccsanandroid/content/Context;Z)I

    move-result v0

    return v0
.end method

.method public static getMaxShortcutCountPerActivity(Lccsanandroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 341
    invoke-static {p0}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 343
    const-class v0, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {v0}, Lccsanandroid/content/pm/ShortcutManager;->getMaxShortcutCountPerActivity()I

    move-result v0

    return v0

    .line 346
    :cond_0
    const/4 v0, 0x5

    return v0
.end method

.method static getShortcutInfoChangeListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;",
            ">;"
        }
    .end annotation

    .line 793
    sget-object v0, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    return-object v0
.end method

.method private static getShortcutInfoCompatWithLowestRank(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "shortcuts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 770
    .local p0, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/content/pm/ShortcutInfoCompat;>;"
    const/4 v0, -0x1

    .line 771
    .local v0, "rank":I
    const/4 v1, 0x0

    .line 772
    .local v1, "target":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;

    .line 773
    .local v3, "s":Lccsanandroidx/core/content/pm/ShortcutInfoCompat;
    invoke-virtual {v3}, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->getRank()I

    move-result v4

    if-le v4, v0, :cond_0

    .line 774
    invoke-virtual {v3}, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v1

    .line 775
    invoke-virtual {v3}, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->getRank()I

    move-result v0

    .line 777
    .end local v3    # "s":Lccsanandroidx/core/content/pm/ShortcutInfoCompat;
    :cond_0
    goto :goto_0

    .line 778
    :cond_1
    return-object v1
.end method

.method private static getShortcutInfoListeners(Lccsanandroid/content/Context;)Ljava/util/List;
    .locals 16
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;",
            ">;"
        }
    .end annotation

    .line 832
    sget-object v0, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    if-nez v0, :cond_4

    .line 833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 834
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;>;"
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_3

    .line 835
    invoke-virtual/range {p0 .. p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v2

    .line 836
    .local v2, "packageManager":Lccsanandroid/content/pm/PackageManager;
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v3, "androidx.core.content.pm.SHORTCUT_LISTENER"

    invoke-direct {v0, v3}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 837
    .local v3, "activityIntent":Lccsanandroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 839
    const/16 v0, 0x80

    invoke-virtual {v2, v3, v0}, Lccsanandroid/content/pm/PackageManager;->queryIntentActivities(Lccsanandroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 842
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lccsanandroid/content/pm/ResolveInfo;

    .line 843
    .local v6, "resolveInfo":Lccsanandroid/content/pm/ResolveInfo;
    iget-object v7, v6, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    .line 844
    .local v7, "activityInfo":Lccsanandroid/content/pm/ActivityInfo;
    if-nez v7, :cond_0

    .line 845
    goto :goto_0

    .line 847
    :cond_0
    iget-object v8, v7, Lccsanandroid/content/pm/ActivityInfo;->metaData:Lccsanandroid/os/Bundle;

    .line 848
    .local v8, "metaData":Lccsanandroid/os/Bundle;
    if-nez v8, :cond_1

    .line 849
    goto :goto_0

    .line 851
    :cond_1
    nop

    .line 852
    const-string v0, "androidx.core.content.pm.shortcut_listener_impl"

    invoke-virtual {v8, v0}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 853
    .local v9, "shortcutListenerImplName":Ljava/lang/String;
    if-nez v9, :cond_2

    .line 854
    goto :goto_0

    .line 857
    :cond_2
    :try_start_0
    const-class v0, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 858
    .local v0, "loader":Ljava/lang/ClassLoader;
    const/4 v10, 0x0

    invoke-static {v9, v10, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v11

    .line 859
    .local v11, "listener":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v12, "getInstance"

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Class;

    const-class v15, Lccsanandroid/content/Context;

    aput-object v15, v14, v10

    invoke-virtual {v11, v12, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 860
    .local v12, "getInstanceMethod":Ljava/lang/reflect/Method;
    const/4 v14, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    aput-object p0, v13, v10

    .line 861
    invoke-virtual {v12, v14, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 860
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    nop

    .end local v0    # "loader":Ljava/lang/ClassLoader;
    .end local v11    # "listener":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "getInstanceMethod":Ljava/lang/reflect/Method;
    goto :goto_1

    :catch_0
    move-exception v0

    .line 863
    .end local v6    # "resolveInfo":Lccsanandroid/content/pm/ResolveInfo;
    .end local v7    # "activityInfo":Lccsanandroid/content/pm/ActivityInfo;
    .end local v8    # "metaData":Lccsanandroid/os/Bundle;
    .end local v9    # "shortcutListenerImplName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 867
    .end local v2    # "packageManager":Lccsanandroid/content/pm/PackageManager;
    .end local v3    # "activityIntent":Lccsanandroid/content/Intent;
    .end local v4    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/content/pm/ResolveInfo;>;"
    :cond_3
    sget-object v0, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    if-nez v0, :cond_4

    .line 868
    sput-object v1, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    .line 871
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;>;"
    :cond_4
    sget-object v0, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    return-object v0
.end method

.method private static getShortcutInfoSaverInstance(Lccsanandroid/content/Context;)Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;
    .locals 7
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            ")",
            "Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver<",
            "*>;"
        }
    .end annotation

    .line 811
    sget-object v0, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;

    if-nez v0, :cond_1

    .line 812
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 814
    :try_start_0
    const-class v0, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 815
    .local v0, "loader":Ljava/lang/ClassLoader;
    const-string v1, "androidx.sharetarget.ShortcutInfoCompatSaverImpl"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 817
    .local v1, "saver":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getInstance"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Lccsanandroid/content/Context;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 818
    .local v3, "getInstanceMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;

    sput-object v2, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "loader":Ljava/lang/ClassLoader;
    .end local v1    # "saver":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "getInstanceMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 820
    :catch_0
    move-exception v0

    .line 823
    :cond_0
    :goto_0
    sget-object v0, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;

    if-nez v0, :cond_1

    .line 825
    new-instance v0, Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver$NoopImpl;

    invoke-direct {v0}, Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver$NoopImpl;-><init>()V

    sput-object v0, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 828
    :cond_1
    sget-object v0, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;

    return-object v0
.end method

.method public static getShortcuts(Lccsanandroid/content/Context;I)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "matchFlags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "context",
            "matchFlags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lccsanandroidx/core/content/pm/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .line 274
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 275
    const-class v0, Lccsanandroid/content/pm/ShortcutManager;

    .line 276
    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {v0, p1}, Lccsanandroid/content/pm/ShortcutManager;->getShortcuts(I)Ljava/util/List;

    move-result-object v0

    .line 277
    .local v0, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/content/pm/ShortcutInfo;>;"
    invoke-static {p0, v0}, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->fromShortcuts(Lccsanandroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 278
    .end local v0    # "shortcuts":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/content/pm/ShortcutInfo;>;"
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_4

    .line 279
    const-class v0, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/ShortcutManager;

    .line 280
    .local v0, "manager":Lccsanandroid/content/pm/ShortcutManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/content/pm/ShortcutInfo;>;"
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_1

    .line 282
    invoke-virtual {v0}, Lccsanandroid/content/pm/ShortcutManager;->getManifestShortcuts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 284
    :cond_1
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_2

    .line 285
    invoke-virtual {v0}, Lccsanandroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 287
    :cond_2
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_3

    .line 288
    invoke-virtual {v0}, Lccsanandroid/content/pm/ShortcutManager;->getPinnedShortcuts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 290
    :cond_3
    invoke-static {p0, v1}, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->fromShortcuts(Lccsanandroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 292
    .end local v0    # "manager":Lccsanandroid/content/pm/ShortcutManager;
    .end local v1    # "shortcuts":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/content/pm/ShortcutInfo;>;"
    :cond_4
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_5

    .line 294
    :try_start_0
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Lccsanandroid/content/Context;)Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;->getShortcuts()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 295
    :catch_0
    move-exception v0

    .line 299
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isRateLimitingActive(Lccsanandroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 358
    invoke-static {p0}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 360
    const-class v0, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {v0}, Lccsanandroid/content/pm/ShortcutManager;->isRateLimitingActive()Z

    move-result v0

    return v0

    .line 363
    :cond_0
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcuts(Lccsanandroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 364
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getMaxShortcutCountPerActivity(Lccsanandroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 363
    :goto_0
    return v0
.end method

.method public static isRequestPinShortcutSupported(Lccsanandroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 153
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 154
    const-class v0, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {v0}, Lccsanandroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result v0

    return v0

    .line 157
    :cond_0
    const-string v0, "com.android.launcher.permission.INSTALL_SHORTCUT"

    invoke-static {p0, v0}, Lccsanandroidx/core/content/ContextCompat;->checkSelfPermission(Lccsanandroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 159
    return v2

    .line 161
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v3, Lccsanandroid/content/Intent;

    const-string v4, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v3, v4}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Lccsanandroid/content/pm/PackageManager;->queryBroadcastReceivers(Lccsanandroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/content/pm/ResolveInfo;

    .line 163
    .local v3, "info":Lccsanandroid/content/pm/ResolveInfo;
    iget-object v4, v3, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v4, v4, Lccsanandroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 164
    .local v4, "permission":Ljava/lang/String;
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 167
    .end local v3    # "info":Lccsanandroid/content/pm/ResolveInfo;
    .end local v4    # "permission":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 165
    .restart local v3    # "info":Lccsanandroid/content/pm/ResolveInfo;
    .restart local v4    # "permission":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 168
    .end local v3    # "info":Lccsanandroid/content/pm/ResolveInfo;
    .end local v4    # "permission":Ljava/lang/String;
    :cond_4
    return v2
.end method

.method public static pushDynamicShortcut(Lccsanandroid/content/Context;Lccsanandroidx/core/content/pm/ShortcutInfoCompat;)Z
    .locals 7
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "shortcut"    # Lccsanandroidx/core/content/pm/ShortcutInfoCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "shortcut"
        }
    .end annotation

    .line 723
    invoke-static {p0}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    invoke-static {p1}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getMaxShortcutCountPerActivity(Lccsanandroid/content/Context;)I

    move-result v0

    .line 727
    .local v0, "maxShortcutCount":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 728
    return v1

    .line 730
    :cond_0
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-gt v2, v3, :cond_1

    .line 731
    invoke-static {p0, p1}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->convertUriIconToBitmapIcon(Lccsanandroid/content/Context;Lccsanandroidx/core/content/pm/ShortcutInfoCompat;)Z

    .line 733
    :cond_1
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    const/4 v4, 0x1

    if-lt v2, v3, :cond_2

    .line 734
    const-class v2, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/content/pm/ShortcutManager;

    .line 735
    invoke-virtual {p1}, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Lccsanandroid/content/pm/ShortcutInfo;

    move-result-object v3

    .line 734
    invoke-virtual {v2, v3}, Lccsanandroid/content/pm/ShortcutManager;->pushDynamicShortcut(Lccsanandroid/content/pm/ShortcutInfo;)V

    goto :goto_0

    .line 736
    :cond_2
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-lt v2, v3, :cond_5

    .line 737
    const-class v2, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/content/pm/ShortcutManager;

    .line 738
    .local v2, "sm":Lccsanandroid/content/pm/ShortcutManager;
    invoke-virtual {v2}, Lccsanandroid/content/pm/ShortcutManager;->isRateLimitingActive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 739
    return v1

    .line 741
    :cond_3
    invoke-virtual {v2}, Lccsanandroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object v3

    .line 742
    .local v3, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/content/pm/ShortcutInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v0, :cond_4

    .line 743
    new-array v5, v4, [Ljava/lang/String;

    .line 744
    invoke-static {v3}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat$Api25Impl;->getShortcutInfoWithLowestRank(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 743
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lccsanandroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    .line 746
    :cond_4
    new-array v5, v4, [Lccsanandroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Lccsanandroid/content/pm/ShortcutInfo;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lccsanandroid/content/pm/ShortcutManager;->addDynamicShortcuts(Ljava/util/List;)Z

    .line 748
    .end local v2    # "sm":Lccsanandroid/content/pm/ShortcutManager;
    .end local v3    # "shortcuts":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/content/pm/ShortcutInfo;>;"
    :cond_5
    :goto_0
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Lccsanandroid/content/Context;)Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v2

    .line 750
    .local v2, "saver":Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;, "Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver<*>;"
    :try_start_0
    invoke-virtual {v2}, Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;->getShortcuts()Ljava/util/List;

    move-result-object v3

    .line 751
    .local v3, "oldShortcuts":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/content/pm/ShortcutInfoCompat;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v0, :cond_6

    .line 752
    new-array v5, v4, [Ljava/lang/String;

    .line 753
    invoke-static {v3}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoCompatWithLowestRank(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 752
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;->removeShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 755
    :cond_6
    new-array v5, v4, [Lccsanandroidx/core/content/pm/ShortcutInfoCompat;

    aput-object p1, v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;->addShortcuts(Ljava/util/List;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    nop

    .line 760
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Lccsanandroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 761
    .local v5, "listener":Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    .line 762
    .end local v5    # "listener":Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;
    goto :goto_1

    .line 763
    :cond_7
    invoke-virtual {p1}, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->reportShortcutUsed(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 756
    return v4

    .line 760
    .end local v3    # "oldShortcuts":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/content/pm/ShortcutInfoCompat;>;"
    :catchall_0
    move-exception v1

    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Lccsanandroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 761
    .local v4, "listener":Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    .line 762
    .end local v4    # "listener":Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;
    goto :goto_2

    .line 763
    :cond_8
    invoke-virtual {p1}, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->reportShortcutUsed(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 764
    throw v1

    .line 757
    :catch_0
    move-exception v3

    .line 760
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Lccsanandroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 761
    .restart local v4    # "listener":Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    .line 762
    .end local v4    # "listener":Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;
    goto :goto_3

    .line 763
    :cond_9
    invoke-virtual {p1}, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->reportShortcutUsed(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 764
    nop

    .line 765
    return v1
.end method

.method public static removeAllDynamicShortcuts(Lccsanandroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 653
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 654
    const-class v0, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {v0}, Lccsanandroid/content/pm/ShortcutManager;->removeAllDynamicShortcuts()V

    .line 657
    :cond_0
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Lccsanandroid/content/Context;)Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;->removeAllShortcuts()Ljava/lang/Object;

    .line 658
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Lccsanandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 659
    .local v1, "listener":Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;
    invoke-virtual {v1}, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;->onAllShortcutsRemoved()V

    .line 660
    .end local v1    # "listener":Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;
    goto :goto_0

    .line 661
    :cond_1
    return-void
.end method

.method public static removeDynamicShortcuts(Lccsanandroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "shortcutIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 635
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 636
    const-class v0, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {v0, p1}, Lccsanandroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    .line 639
    :cond_0
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Lccsanandroid/content/Context;)Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;->removeShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 640
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Lccsanandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 641
    .local v1, "listener":Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;
    invoke-virtual {v1, p1}, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutRemoved(Ljava/util/List;)V

    .line 642
    .end local v1    # "listener":Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;
    goto :goto_0

    .line 643
    :cond_1
    return-void
.end method

.method public static removeLongLivedShortcuts(Lccsanandroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "shortcutIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 676
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 677
    invoke-static {p0, p1}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->removeDynamicShortcuts(Lccsanandroid/content/Context;Ljava/util/List;)V

    .line 678
    return-void

    .line 681
    :cond_0
    const-class v0, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {v0, p1}, Lccsanandroid/content/pm/ShortcutManager;->removeLongLivedShortcuts(Ljava/util/List;)V

    .line 682
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Lccsanandroid/content/Context;)Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;->removeShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 683
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Lccsanandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 684
    .local v1, "listener":Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;
    invoke-virtual {v1, p1}, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutRemoved(Ljava/util/List;)V

    .line 685
    .end local v1    # "listener":Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;
    goto :goto_0

    .line 686
    :cond_1
    return-void
.end method

.method public static reportShortcutUsed(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "shortcutId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "shortcutId"
        }
    .end annotation

    .line 415
    invoke-static {p0}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    invoke-static {p1}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 418
    const-class v0, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {v0, p1}, Lccsanandroid/content/pm/ShortcutManager;->reportShortcutUsed(Ljava/lang/String;)V

    .line 421
    :cond_0
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Lccsanandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 422
    .local v1, "listener":Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutUsageReported(Ljava/util/List;)V

    .line 423
    .end local v1    # "listener":Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;
    goto :goto_0

    .line 424
    :cond_1
    return-void
.end method

.method public static requestPinShortcut(Lccsanandroid/content/Context;Lccsanandroidx/core/content/pm/ShortcutInfoCompat;Lccsanandroid/content/IntentSender;)Z
    .locals 10
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "shortcut"    # Lccsanandroidx/core/content/pm/ShortcutInfoCompat;
    .param p2, "callback"    # Lccsanandroid/content/IntentSender;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "context",
            "shortcut",
            "callback"
        }
    .end annotation

    .line 190
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 191
    const-class v0, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/ShortcutManager;

    .line 192
    invoke-virtual {p1}, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Lccsanandroid/content/pm/ShortcutInfo;

    move-result-object v1

    .line 191
    invoke-virtual {v0, v1, p2}, Lccsanandroid/content/pm/ShortcutManager;->requestPinShortcut(Lccsanandroid/content/pm/ShortcutInfo;Lccsanandroid/content/IntentSender;)Z

    move-result v0

    return v0

    .line 195
    :cond_0
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->isRequestPinShortcutSupported(Lccsanandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    const/4 v0, 0x0

    return v0

    .line 198
    :cond_1
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->addToIntent(Lccsanandroid/content/Intent;)Lccsanandroid/content/Intent;

    move-result-object v0

    .line 201
    .local v0, "intent":Lccsanandroid/content/Intent;
    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 202
    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->sendBroadcast(Lccsanandroid/content/Intent;)V

    .line 203
    return v1

    .line 207
    :cond_2
    const/4 v4, 0x0

    new-instance v5, Lccsanandroidx/core/content/pm/ShortcutManagerCompat$1;

    invoke-direct {v5, p2}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat$1;-><init>(Lccsanandroid/content/IntentSender;)V

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-virtual/range {v2 .. v9}, Lccsanandroid/content/Context;->sendOrderedBroadcast(Lccsanandroid/content/Intent;Ljava/lang/String;Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/os/Handler;ILjava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 217
    return v1
.end method

.method public static setDynamicShortcuts(Lccsanandroid/content/Context;Ljava/util/List;)Z
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "shortcutInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/util/List<",
            "Lccsanandroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)Z"
        }
    .end annotation

    .line 449
    .local p1, "shortcutInfoList":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/content/pm/ShortcutInfoCompat;>;"
    invoke-static {p0}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    invoke-static {p1}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_1

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 453
    .local v0, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/content/pm/ShortcutInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;

    .line 454
    .local v2, "compat":Lccsanandroidx/core/content/pm/ShortcutInfoCompat;
    invoke-virtual {v2}, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Lccsanandroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    .end local v2    # "compat":Lccsanandroidx/core/content/pm/ShortcutInfoCompat;
    goto :goto_0

    .line 456
    :cond_0
    const-class v1, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {v1, v0}, Lccsanandroid/content/pm/ShortcutManager;->setDynamicShortcuts(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 457
    const/4 v1, 0x0

    return v1

    .line 460
    .end local v0    # "shortcuts":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/content/pm/ShortcutInfo;>;"
    :cond_1
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Lccsanandroid/content/Context;)Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;->removeAllShortcuts()Ljava/lang/Object;

    .line 461
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Lccsanandroid/content/Context;)Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;->addShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 463
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Lccsanandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 464
    .local v1, "listener":Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;
    invoke-virtual {v1}, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;->onAllShortcutsRemoved()V

    .line 465
    invoke-virtual {v1, p1}, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    .line 466
    .end local v1    # "listener":Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;
    goto :goto_1

    .line 467
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static setShortcutInfoChangeListeners(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;",
            ">;)V"
        }
    .end annotation

    .line 788
    .local p0, "listeners":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;>;"
    sput-object p0, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    .line 789
    return-void
.end method

.method static setShortcutInfoCompatSaver(Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "saver"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 783
    .local p0, "saver":Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;, "Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver<Ljava/lang/Void;>;"
    sput-object p0, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 784
    return-void
.end method

.method public static updateShortcuts(Lccsanandroid/content/Context;Ljava/util/List;)Z
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "shortcutInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/util/List<",
            "Lccsanandroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)Z"
        }
    .end annotation

    .line 511
    .local p1, "shortcutInfoList":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/content/pm/ShortcutInfoCompat;>;"
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    .line 512
    invoke-static {p0, p1}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->convertUriIconsToBitmapIcons(Lccsanandroid/content/Context;Ljava/util/List;)V

    .line 514
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_2

    .line 515
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .local v0, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/content/pm/ShortcutInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;

    .line 517
    .local v2, "item":Lccsanandroidx/core/content/pm/ShortcutInfoCompat;
    invoke-virtual {v2}, Lccsanandroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Lccsanandroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    .end local v2    # "item":Lccsanandroidx/core/content/pm/ShortcutInfoCompat;
    goto :goto_0

    .line 519
    :cond_1
    const-class v1, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/pm/ShortcutManager;

    invoke-virtual {v1, v0}, Lccsanandroid/content/pm/ShortcutManager;->updateShortcuts(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 520
    const/4 v1, 0x0

    return v1

    .line 524
    .end local v0    # "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/content/pm/ShortcutInfo;>;"
    :cond_2
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Lccsanandroid/content/Context;)Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/core/content/pm/ShortcutInfoCompatSaver;->addShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 525
    invoke-static {p0}, Lccsanandroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Lccsanandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 526
    .local v1, "listener":Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;
    invoke-virtual {v1, p1}, Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutUpdated(Ljava/util/List;)V

    .line 527
    .end local v1    # "listener":Lccsanandroidx/core/content/pm/ShortcutInfoChangeListener;
    goto :goto_1

    .line 528
    :cond_3
    const/4 v0, 0x1

    return v0
.end method
