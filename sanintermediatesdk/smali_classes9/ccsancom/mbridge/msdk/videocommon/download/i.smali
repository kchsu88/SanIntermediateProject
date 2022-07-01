.class public final Lccsancom/mbridge/msdk/videocommon/download/i;
.super Ljava/lang/Object;
.source "ResDownloadCheckManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/videocommon/download/i$a;
    }
.end annotation


# static fields
.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/videocommon/download/i;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->a:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->c:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->d:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->e:Ljava/util/Map;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/videocommon/download/i$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lccsancom/mbridge/msdk/videocommon/download/i;-><init>()V

    return-void
.end method

.method public static a()Lccsancom/mbridge/msdk/videocommon/download/i;
    .locals 1

    .line 35
    sget-object v0, Lccsancom/mbridge/msdk/videocommon/download/i$a;->a:Lccsancom/mbridge/msdk/videocommon/download/i;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)V
    .locals 1

    .line 82
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->a:Ljava/util/Map;

    .line 85
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 55
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 58
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 59
    if-eqz v0, :cond_9

    .line 60
    nop

    .line 1111
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 1112
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    .line 1113
    iget-object v3, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->a:Ljava/util/Map;

    if-eqz v3, :cond_1

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1114
    iget-object v3, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    :cond_1
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v2

    .line 1118
    iget-object v3, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->c:Ljava/util/Map;

    if-eqz v3, :cond_2

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1119
    iget-object v3, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    :cond_2
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v2

    .line 1123
    if-eqz v2, :cond_7

    .line 1124
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/util/List;

    move-result-object v2

    .line 1125
    if-eqz v2, :cond_7

    .line 1126
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c$a;

    .line 1127
    if-eqz v3, :cond_6

    .line 1128
    iget-object v3, v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c$a;->b:Ljava/util/List;

    .line 1137
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    .line 1140
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1141
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1142
    goto :goto_2

    .line 1144
    :cond_4
    sget-object v5, Lccsancom/mbridge/msdk/videocommon/download/i;->b:Ljava/util/Map;

    if-eqz v5, :cond_5

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1145
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object v5

    invoke-virtual {v5, v4}, Lccsancom/mbridge/msdk/foundation/same/c/b;->b(Ljava/lang/String;)Z

    move-result v5

    .line 1146
    sget-object v6, Lccsancom/mbridge/msdk/videocommon/download/i;->b:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    :cond_5
    goto :goto_2

    .line 1130
    :cond_6
    :goto_3
    goto :goto_1

    .line 61
    :cond_7
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2074
    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->d:Ljava/util/Map;

    if-nez v2, :cond_8

    .line 2075
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->d:Ljava/util/Map;

    .line 2077
    :cond_8
    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->d:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_9
    goto/16 :goto_0

    .line 64
    :cond_a
    return-void

    .line 56
    :cond_b
    :goto_4
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .line 39
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 42
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 1

    .line 89
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->c:Ljava/util/Map;

    .line 92
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    .line 47
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 50
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Ljava/lang/String;Z)V
    .locals 1

    .line 96
    sget-object v0, Lccsancom/mbridge/msdk/videocommon/download/i;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/videocommon/download/i;->b:Ljava/util/Map;

    .line 99
    :cond_0
    sget-object v0, Lccsancom/mbridge/msdk/videocommon/download/i;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 2

    .line 169
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 170
    return v1

    .line 173
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 175
    return p1

    .line 177
    :cond_1
    return v1
.end method

.method public final d(Ljava/lang/String;Z)V
    .locals 1

    .line 103
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->e:Ljava/util/Map;

    .line 106
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/i;->e:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method
