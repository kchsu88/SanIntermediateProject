.class public final Lccsancom/iab/omid/library/vungle/a/d;
.super Lccsanandroid/database/ContentObserver;


# instance fields
.field private final a:Lccsanandroid/content/Context;

.field private final b:Lccsanandroid/media/AudioManager;

.field private final c:Lccsancom/iab/omid/library/vungle/a/a;

.field private final d:Lccsancom/iab/omid/library/vungle/a/c;

.field private e:F


# direct methods
.method public constructor <init>(Lccsanandroid/os/Handler;Lccsanandroid/content/Context;Lccsancom/iab/omid/library/vungle/a/a;Lccsancom/iab/omid/library/vungle/a/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsanandroid/database/ContentObserver;-><init>(Lccsanandroid/os/Handler;)V

    iput-object p2, p0, Lccsancom/iab/omid/library/vungle/a/d;->a:Lccsanandroid/content/Context;

    const-string p1, "audio"

    invoke-virtual {p2, p1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/media/AudioManager;

    iput-object p1, p0, Lccsancom/iab/omid/library/vungle/a/d;->b:Lccsanandroid/media/AudioManager;

    iput-object p3, p0, Lccsancom/iab/omid/library/vungle/a/d;->c:Lccsancom/iab/omid/library/vungle/a/a;

    iput-object p4, p0, Lccsancom/iab/omid/library/vungle/a/d;->d:Lccsancom/iab/omid/library/vungle/a/c;

    return-void
.end method

.method private a(F)Z
    .locals 1

    iget v0, p0, Lccsancom/iab/omid/library/vungle/a/d;->e:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c()F
    .locals 3

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/a/d;->b:Lccsanandroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lccsanandroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v2, p0, Lccsancom/iab/omid/library/vungle/a/d;->b:Lccsanandroid/media/AudioManager;

    invoke-virtual {v2, v1}, Lccsanandroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iget-object v2, p0, Lccsancom/iab/omid/library/vungle/a/d;->c:Lccsancom/iab/omid/library/vungle/a/a;

    invoke-virtual {v2, v0, v1}, Lccsancom/iab/omid/library/vungle/a/a;->a(II)F

    move-result v0

    return v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/a/d;->d:Lccsancom/iab/omid/library/vungle/a/c;

    iget v1, p0, Lccsancom/iab/omid/library/vungle/a/d;->e:F

    invoke-interface {v0, v1}, Lccsancom/iab/omid/library/vungle/a/c;->a(F)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-direct {p0}, Lccsancom/iab/omid/library/vungle/a/d;->c()F

    move-result v0

    iput v0, p0, Lccsancom/iab/omid/library/vungle/a/d;->e:F

    invoke-direct {p0}, Lccsancom/iab/omid/library/vungle/a/d;->d()V

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/a/d;->a:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lccsanandroid/provider/Settings$System;->CONTENT_URI:Lccsanandroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lccsanandroid/content/ContentResolver;->registerContentObserver(Lccsanandroid/net/Uri;ZLccsanandroid/database/ContentObserver;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/a/d;->a:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanandroid/content/ContentResolver;->unregisterContentObserver(Lccsanandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Lccsanandroid/database/ContentObserver;->onChange(Z)V

    invoke-direct {p0}, Lccsancom/iab/omid/library/vungle/a/d;->c()F

    move-result p1

    invoke-direct {p0, p1}, Lccsancom/iab/omid/library/vungle/a/d;->a(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lccsancom/iab/omid/library/vungle/a/d;->e:F

    invoke-direct {p0}, Lccsancom/iab/omid/library/vungle/a/d;->d()V

    :cond_0
    return-void
.end method
