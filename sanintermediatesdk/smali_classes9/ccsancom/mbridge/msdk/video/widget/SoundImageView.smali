.class public Lccsancom/mbridge/msdk/video/widget/SoundImageView;
.super Lccsanandroid/widget/ImageView;
.source "SoundImageView.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 23
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->a:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 23
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->a:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 23
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->a:Z

    .line 13
    return-void
.end method


# virtual methods
.method public getStatus()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->a:Z

    return v0
.end method

.method public setSoundStatus(Z)V
    .locals 2

    .line 30
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->a:Z

    .line 31
    const-string v0, "drawable"

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    const-string v1, "mbridge_reward_sound_open"

    invoke-static {p1, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->setImageResource(I)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    const-string v1, "mbridge_reward_sound_close"

    invoke-static {p1, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/widget/SoundImageView;->setImageResource(I)V

    .line 36
    :goto_0
    return-void
.end method
