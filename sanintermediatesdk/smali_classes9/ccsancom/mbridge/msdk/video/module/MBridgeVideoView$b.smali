.class final Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;
.super Lccsancom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;
.source "MBridgeVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field private l:I

.field private m:I

.field private n:Z


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)V
    .locals 1

    .line 1050
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;-><init>()V

    .line 1014
    new-instance v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;

    .line 1015
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->f:Z

    .line 1016
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->g:Z

    .line 1017
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->h:Z

    .line 1023
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->n:Z

    .line 1051
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 1052
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1042
    iget v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->b:I

    return v0
.end method

.method public final a(II)V
    .locals 0

    .line 1046
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->l:I

    .line 1047
    iput p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->m:I

    .line 1048
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 1030
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->k:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1031
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 1038
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->j:Ljava/lang/String;

    .line 1039
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 1034
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->i:Z

    .line 1035
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1163
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 1164
    const/4 v0, 0x0

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->a(Z)Z

    .line 1165
    return-void
.end method

.method public final onBufferingEnd()V
    .locals 3

    .line 1150
    :try_start_0
    invoke-super {p0}, Lccsancom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onBufferingEnd()V

    .line 1151
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v1, 0xe

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1154
    goto :goto_0

    .line 1152
    :catch_0
    move-exception v0

    .line 1153
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1155
    :goto_0
    return-void
.end method

.method public final onBufferingStart(Ljava/lang/String;)V
    .locals 2

    .line 1139
    :try_start_0
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onBufferingStart(Ljava/lang/String;)V

    .line 1140
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object p1, p1, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v0, 0xd

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1144
    goto :goto_0

    .line 1142
    :catch_0
    move-exception p1

    .line 1143
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1145
    :goto_0
    return-void
.end method

.method public final onPlayCompleted()V
    .locals 5

    .line 1066
    invoke-super {p0}, Lccsancom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onPlayCompleted()V

    .line 1067
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->h(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z

    .line 1069
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->m(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Lccsanandroid/widget/TextView;

    move-result-object v0

    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->c(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Lccsancom/mbridge/msdk/playercommon/PlayerView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->setClickable(Z)V

    .line 1072
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->f(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Z)Ljava/lang/String;

    move-result-object v0

    .line 1074
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v2, v2, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v3, 0x79

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 1075
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v2, v2, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v3, 0xb

    invoke-interface {v2, v3, v0}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 1076
    iget v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->c:I

    iput v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->b:I

    .line 1077
    invoke-static {v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->a(Z)Z

    .line 1078
    return-void
.end method

.method public final onPlayError(Ljava/lang/String;)V
    .locals 2

    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorStr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultVideoPlayerStatusListener"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onPlayError(Ljava/lang/String;)V

    .line 1084
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v1, 0xc

    invoke-interface {v0, v1, p1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 1085
    return-void
.end method

.method public final onPlayProgress(II)V
    .locals 3

    .line 1089
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onPlayProgress(II)V

    .line 1090
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-boolean v0, v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->f:Z

    if-eqz v0, :cond_1

    .line 1091
    sub-int v0, p2, p1

    .line 1092
    if-gtz v0, :cond_0

    .line 1093
    const/4 v0, 0x0

    .line 1095
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->m(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Lccsanandroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    :cond_1
    iput p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->c:I

    .line 1098
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;

    iput p1, v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;->a:I

    .line 1099
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;

    iput p2, v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;->b:I

    .line 1100
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->n(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Z

    move-result v1

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;->c:Z

    .line 1101
    iput p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->b:I

    .line 1102
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v1, 0xf

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 1104
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->d(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 1105
    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->o(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 1106
    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->h(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)I

    move-result v0

    sget v1, Lccsancom/mbridge/msdk/foundation/same/a;->n:I

    if-ne v0, v1, :cond_2

    .line 1107
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->f(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)V

    .line 1111
    :cond_2
    iget v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->l:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_6

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->n:Z

    if-nez v2, :cond_6

    .line 1112
    if-nez v0, :cond_3

    .line 1113
    return-void

    .line 1115
    :cond_3
    iget v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->m:I

    if-ltz v0, :cond_6

    .line 1116
    mul-int p2, p2, v0

    div-int/2addr p2, v1

    .line 1118
    if-lt p1, p2, :cond_6

    .line 1120
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->k:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 v0, 0x5e

    if-eq p1, v0, :cond_5

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->k:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 v0, 0x11f

    if-ne p1, v0, :cond_4

    goto :goto_0

    .line 1123
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->k:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->k:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->k:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1121
    :cond_5
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->k:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->k:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->k:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1125
    :goto_1
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lccsancom/mbridge/msdk/videocommon/download/c;->a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/download/a;

    move-result-object p1

    .line 1126
    if-eqz p1, :cond_6

    .line 1127
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/videocommon/download/a;->j()V

    .line 1128
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->n:Z

    .line 1129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CDRate is : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and start download !"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DefaultVideoPlayerStatusListener"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    :cond_6
    return-void
.end method

.method public final onPlaySetDataSourceError(Ljava/lang/String;)V
    .locals 0

    .line 1159
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onPlaySetDataSourceError(Ljava/lang/String;)V

    .line 1160
    return-void
.end method

.method public final onPlayStarted(I)V
    .locals 2

    .line 1056
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onPlayStarted(I)V

    .line 1057
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->d:Z

    if-nez p1, :cond_0

    .line 1058
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object p1, p1, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v0, 0xa

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;

    invoke-interface {p1, v0, v1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 1059
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$b;->d:Z

    .line 1061
    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->a(Z)Z

    .line 1062
    return-void
.end method
