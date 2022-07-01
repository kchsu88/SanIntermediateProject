.class final Lccsanandroid/support/v4/media/session/PlaybackStateCompatApi21$CustomAction;
.super Ljava/lang/Object;
.source "PlaybackStateCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/PlaybackStateCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CustomAction"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method public static getAction(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "customActionObj"    # Ljava/lang/Object;

    .line 82
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {v0}, Lccsanandroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtras(Ljava/lang/Object;)Lccsanandroid/os/Bundle;
    .locals 1
    .param p0, "customActionObj"    # Ljava/lang/Object;

    .line 93
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {v0}, Lccsanandroid/media/session/PlaybackState$CustomAction;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getIcon(Ljava/lang/Object;)I
    .locals 1
    .param p0, "customActionObj"    # Ljava/lang/Object;

    .line 90
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {v0}, Lccsanandroid/media/session/PlaybackState$CustomAction;->getIcon()I

    move-result v0

    return v0
.end method

.method public static getName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "customActionObj"    # Ljava/lang/Object;

    .line 86
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {v0}, Lccsanandroid/media/session/PlaybackState$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/CharSequence;ILccsanandroid/os/Bundle;)Ljava/lang/Object;
    .locals 2
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # I
    .param p3, "extras"    # Lccsanandroid/os/Bundle;

    .line 98
    new-instance v0, Lccsanandroid/media/session/PlaybackState$CustomAction$Builder;

    invoke-direct {v0, p0, p1, p2}, Lccsanandroid/media/session/PlaybackState$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 100
    .local v0, "customActionObj":Lccsanandroid/media/session/PlaybackState$CustomAction$Builder;
    invoke-virtual {v0, p3}, Lccsanandroid/media/session/PlaybackState$CustomAction$Builder;->setExtras(Lccsanandroid/os/Bundle;)Lccsanandroid/media/session/PlaybackState$CustomAction$Builder;

    .line 101
    invoke-virtual {v0}, Lccsanandroid/media/session/PlaybackState$CustomAction$Builder;->build()Lccsanandroid/media/session/PlaybackState$CustomAction;

    move-result-object v1

    return-object v1
.end method
