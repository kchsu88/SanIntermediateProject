.class public Lccsancom/mbridge/msdk/video/bt/a/a;
.super Ljava/lang/Object;
.source "H5MediaPlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/video/bt/a/a$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;

.field private static e:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:I

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lccsancom/mbridge/msdk/video/bt/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/video/bt/a/a;->c:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/video/bt/a/a;->e:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "handlerNativeResult"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/bt/a/a;->d:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/video/bt/a/a;->a:I

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/video/bt/a/a;->b:I

    return-void
.end method

.method public static a()Lccsancom/mbridge/msdk/video/bt/a/a;
    .locals 1

    .line 32
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/a$a;->a()Lccsancom/mbridge/msdk/video/bt/a/a;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 149
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 150
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 151
    const-string p1, "message"

    invoke-virtual {v0, p1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 152
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p1

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception p1

    .line 156
    sget-object p2, Lccsancom/mbridge/msdk/video/bt/a/a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 153
    :catch_0
    move-exception p1

    .line 154
    sget-object p2, Lccsancom/mbridge/msdk/video/bt/a/a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_0
    nop

    .line 158
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;Lccsanorg/json/JSONArray;I)V
    .locals 10

    .line 45
    :try_start_0
    const-string p4, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    const-string v0, "value"

    const/4 v1, 0x7

    const-string v2, "type"

    const-string v3, "key"

    if-eqz p3, :cond_0

    :try_start_1
    invoke-virtual {p3}, Lccsanorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 47
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v4

    .line 48
    if-eqz v4, :cond_0

    .line 49
    invoke-virtual {v4, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-virtual {v4, v2, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 51
    const-string v7, "instanceId"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v6, :cond_0

    .line 52
    invoke-virtual {v4, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 56
    :cond_0
    invoke-static {p4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    iget p2, p0, Lccsancom/mbridge/msdk/video/bt/a/a;->b:I

    const-string p3, "instanceId find error"

    invoke-direct {p0, p2, p3, p1}, Lccsancom/mbridge/msdk/video/bt/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 58
    return-void

    .line 60
    :cond_1
    sget-object v4, Lccsancom/mbridge/msdk/video/bt/a/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 61
    iget p2, p0, Lccsancom/mbridge/msdk/video/bt/a/a;->b:I

    const-string p3, "can not find player"

    invoke-direct {p0, p2, p3, p1}, Lccsancom/mbridge/msdk/video/bt/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 62
    return-void

    .line 64
    :cond_2
    const-string v4, "play"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "player is null"

    if-eqz v4, :cond_4

    .line 65
    :try_start_2
    sget-object p2, Lccsancom/mbridge/msdk/video/bt/a/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 66
    if-eqz p2, :cond_3

    .line 67
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->play()V

    goto :goto_0

    .line 69
    :cond_3
    iget p2, p0, Lccsancom/mbridge/msdk/video/bt/a/a;->b:I

    invoke-direct {p0, p2, v5, p1}, Lccsancom/mbridge/msdk/video/bt/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 71
    :goto_0
    return-void

    .line 73
    :cond_4
    const-string v4, "pause"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 74
    sget-object p2, Lccsancom/mbridge/msdk/video/bt/a/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 75
    if-eqz p2, :cond_5

    .line 76
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->pause()V

    goto :goto_1

    .line 78
    :cond_5
    iget p2, p0, Lccsancom/mbridge/msdk/video/bt/a/a;->b:I

    invoke-direct {p0, p2, v5, p1}, Lccsancom/mbridge/msdk/video/bt/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 80
    :goto_1
    return-void

    .line 82
    :cond_6
    const-string v4, "stop"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 83
    sget-object p2, Lccsancom/mbridge/msdk/video/bt/a/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 84
    if-eqz p2, :cond_7

    .line 85
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->stop()V

    goto :goto_2

    .line 87
    :cond_7
    iget p2, p0, Lccsancom/mbridge/msdk/video/bt/a/a;->b:I

    invoke-direct {p0, p2, v5, p1}, Lccsancom/mbridge/msdk/video/bt/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 89
    :goto_2
    return-void

    .line 91
    :cond_8
    const-string v4, "setVolume"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v4, :cond_d

    .line 92
    nop

    .line 93
    nop

    .line 94
    const/4 p2, 0x0

    if-eqz p3, :cond_b

    invoke-virtual {p3}, Lccsanorg/json/JSONArray;->length()I

    move-result v4

    const/4 v8, 0x2

    if-le v4, v8, :cond_b

    .line 95
    invoke-virtual {p3, v7}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v4

    .line 96
    invoke-virtual {p3, v8}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object p3

    .line 97
    if-eqz v4, :cond_9

    .line 98
    invoke-virtual {v4, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 99
    invoke-virtual {v4, v2, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 100
    const-string v9, "leftVolume"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    if-ne v8, v6, :cond_9

    .line 101
    invoke-virtual {v4, v0}, Lccsanorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v4, v7

    goto :goto_3

    .line 104
    :cond_9
    const/4 v4, 0x0

    :goto_3
    if-eqz p3, :cond_a

    .line 105
    invoke-virtual {p3, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {p3, v2, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 107
    const-string v2, "rightVolume"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-ne v1, v6, :cond_a

    .line 108
    invoke-virtual {p3, v0}, Lccsanorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide p2

    double-to-float p2, p2

    move p3, p2

    move p2, v4

    goto :goto_4

    .line 112
    :cond_a
    move p2, v4

    :cond_b
    const/4 p3, 0x0

    :goto_4
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 113
    if-eqz p4, :cond_c

    .line 114
    invoke-virtual {p4, p2, p3}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setVolume(FF)V

    goto :goto_5

    .line 116
    :cond_c
    iget p2, p0, Lccsancom/mbridge/msdk/video/bt/a/a;->b:I

    invoke-direct {p0, p2, v5, p1}, Lccsancom/mbridge/msdk/video/bt/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 118
    :goto_5
    return-void

    .line 120
    :cond_d
    const-string v4, "setPlaybackParams"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 121
    const/high16 p2, 0x3f800000    # 1.0f

    .line 122
    if-eqz p3, :cond_e

    invoke-virtual {p3}, Lccsanorg/json/JSONArray;->length()I

    move-result v4

    if-le v4, v7, :cond_e

    .line 123
    invoke-virtual {p3, v7}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object p3

    .line 124
    if-eqz p3, :cond_e

    .line 125
    invoke-virtual {p3, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-virtual {p3, v2, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 127
    const-string v2, "speed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-ne v1, v6, :cond_e

    .line 128
    invoke-virtual {p3, v0}, Lccsanorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide p2

    double-to-float p2, p2

    .line 132
    :cond_e
    sget-object p3, Lccsancom/mbridge/msdk/video/bt/a/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p3, p4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 133
    if-eqz p3, :cond_f

    .line 134
    invoke-virtual {p3, p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setPlaybackParams(F)V

    goto :goto_6

    .line 136
    :cond_f
    iget p2, p0, Lccsancom/mbridge/msdk/video/bt/a/a;->b:I

    invoke-direct {p0, p2, v5, p1}, Lccsancom/mbridge/msdk/video/bt/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 138
    :goto_6
    return-void

    .line 140
    :cond_10
    iget p2, p0, Lccsancom/mbridge/msdk/video/bt/a/a;->b:I

    const-string p3, "method not found"

    invoke-direct {p0, p2, p3, p1}, Lccsancom/mbridge/msdk/video/bt/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    goto :goto_7

    .line 141
    :catchall_0
    move-exception p2

    .line 142
    sget-object p3, Lccsancom/mbridge/msdk/video/bt/a/a;->c:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget p3, p0, Lccsancom/mbridge/msdk/video/bt/a/a;->b:I

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception\uff1a"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p2, p1}, Lccsancom/mbridge/msdk/video/bt/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 145
    :goto_7
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 40
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public final a(Ljava/lang/String;Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)V
    .locals 1

    .line 36
    sget-object v0, Lccsancom/mbridge/msdk/video/bt/a/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method
