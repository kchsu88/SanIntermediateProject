.class public Lccsancom/mbridge/msdk/mbsignalcommon/a/a;
.super Ljava/lang/Object;
.source "H5ReportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/mbsignalcommon/a/a$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field a:I

.field b:I

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lccsancom/mbridge/msdk/mbsignalcommon/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/mbsignalcommon/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "handlerNativeResult"

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/a/a;->d:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/a/a;->a:I

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/a/a;->b:I

    return-void
.end method

.method public static a()Lccsancom/mbridge/msdk/mbsignalcommon/a/a;
    .locals 1

    .line 38
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/a/a$a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/a/a;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 194
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 195
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 196
    const-string p1, "message"

    invoke-virtual {v0, p1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 197
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

    .line 200
    :catchall_0
    move-exception p1

    .line 201
    sget-object p2, Lccsancom/mbridge/msdk/mbsignalcommon/a/a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 198
    :catch_0
    move-exception p1

    .line 199
    sget-object p2, Lccsancom/mbridge/msdk/mbsignalcommon/a/a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_0
    nop

    .line 203
    :goto_1
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lccsancom/mbridge/msdk/mbsignalcommon/a/a;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;Lccsanorg/json/JSONArray;I)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v3, p3

    .line 43
    nop

    .line 44
    const-string v4, "called reporter failed, params empty"

    if-nez v3, :cond_0

    .line 45
    :try_start_0
    iget v0, v1, Lccsancom/mbridge/msdk/mbsignalcommon/a/a;->b:I

    invoke-direct {v1, v0, v4, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 46
    return-void

    .line 48
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lccsanorg/json/JSONArray;->length()I

    move-result v5

    .line 49
    if-nez v5, :cond_1

    .line 50
    iget v0, v1, Lccsancom/mbridge/msdk/mbsignalcommon/a/a;->b:I

    invoke-direct {v1, v0, v4, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 51
    return-void

    .line 53
    :cond_1
    const-string v4, "reportMessageR"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "value"

    if-eqz v4, :cond_5

    .line 54
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v9, v5, -0x1

    const-string v10, "="

    const-string v11, "key"

    if-ge v4, v9, :cond_3

    .line 56
    :try_start_2
    invoke-virtual {v3, v4}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v9

    .line 57
    if-eqz v9, :cond_2

    .line 58
    invoke-virtual {v9, v11}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v8}, Lccsanorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v9, "&"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {v3, v9}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v3

    .line 62
    if-eqz v3, :cond_4

    .line 63
    invoke-virtual {v3, v11}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v8}, Lccsanorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 65
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1154
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v3

    .line 1155
    if-eqz v3, :cond_12

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v4, :cond_12

    .line 1157
    :try_start_3
    new-instance v4, Lccsancom/mbridge/msdk/foundation/same/report/d/a;

    invoke-direct {v4, v3}, Lccsancom/mbridge/msdk/foundation/same/report/d/a;-><init>(Lccsanandroid/content/Context;)V

    .line 1158
    invoke-static {v0, v3}, Lccsancom/mbridge/msdk/foundation/same/report/d;->a(Ljava/lang/String;Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/net/h/d;

    move-result-object v0

    .line 1159
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v3

    iget-object v3, v3, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->a:Ljava/lang/String;

    new-instance v5, Lccsancom/mbridge/msdk/mbsignalcommon/a/a$1;

    invoke-direct {v5, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/a/a$1;-><init>(Lccsancom/mbridge/msdk/mbsignalcommon/a/a;)V

    invoke-virtual {v4, v6, v3, v0, v5}, Lccsancom/mbridge/msdk/foundation/same/report/d/a;->c(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/e;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1174
    goto/16 :goto_c

    .line 1172
    :catch_0
    move-exception v0

    .line 1173
    :try_start_4
    sget-object v3, Lccsancom/mbridge/msdk/mbsignalcommon/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 66
    :cond_5
    const-string v4, "reportMessageD"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_12

    .line 67
    nop

    .line 68
    nop

    .line 69
    nop

    .line 70
    nop

    .line 71
    nop

    .line 72
    nop

    .line 73
    nop

    .line 74
    nop

    .line 75
    nop

    .line 76
    nop

    .line 77
    nop

    .line 78
    const-string v0, ""

    if-lez v5, :cond_6

    .line 79
    :try_start_5
    invoke-virtual {v3, v6}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v4

    .line 80
    if-eqz v4, :cond_6

    .line 81
    invoke-virtual {v4, v8}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    goto :goto_1

    .line 84
    :cond_6
    move-object v10, v0

    :goto_1
    const/4 v4, -0x1

    if-le v5, v7, :cond_7

    .line 85
    invoke-virtual {v3, v7}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v6

    .line 86
    if-eqz v6, :cond_7

    .line 87
    invoke-virtual {v6, v8}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    move v11, v6

    goto :goto_2

    .line 90
    :cond_7
    const/4 v11, -0x1

    :goto_2
    const/4 v6, 0x2

    if-le v5, v6, :cond_8

    .line 91
    invoke-virtual {v3, v6}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v6

    .line 92
    if-eqz v6, :cond_8

    .line 93
    invoke-virtual {v6, v8}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    move v12, v6

    goto :goto_3

    .line 96
    :cond_8
    const/4 v12, -0x1

    :goto_3
    const/4 v6, 0x3

    if-le v5, v6, :cond_9

    .line 97
    invoke-virtual {v3, v6}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v6

    .line 98
    if-eqz v6, :cond_9

    .line 99
    invoke-virtual {v6, v8}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    move v13, v6

    goto :goto_4

    .line 102
    :cond_9
    const/4 v13, -0x1

    :goto_4
    const/4 v6, 0x4

    if-le v5, v6, :cond_a

    .line 103
    invoke-virtual {v3, v6}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v6

    .line 104
    if-eqz v6, :cond_a

    .line 105
    invoke-virtual {v6, v8}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    move v14, v6

    goto :goto_5

    .line 108
    :cond_a
    const/4 v14, -0x1

    :goto_5
    const/4 v6, 0x5

    if-le v5, v6, :cond_b

    .line 109
    invoke-virtual {v3, v6}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v6

    .line 110
    if-eqz v6, :cond_b

    .line 111
    invoke-virtual {v6, v8}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v15, v6

    goto :goto_6

    .line 114
    :cond_b
    move-object v15, v0

    :goto_6
    const/4 v6, 0x6

    if-le v5, v6, :cond_c

    .line 115
    invoke-virtual {v3, v6}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v6

    .line 116
    if-eqz v6, :cond_c

    .line 117
    invoke-virtual {v6, v8}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v6

    goto :goto_7

    .line 120
    :cond_c
    move-object/from16 v16, v0

    :goto_7
    const/4 v6, 0x7

    if-le v5, v6, :cond_d

    .line 121
    invoke-virtual {v3, v6}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v6

    .line 122
    if-eqz v6, :cond_d

    .line 123
    invoke-virtual {v6, v8}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    move/from16 v17, v6

    goto :goto_8

    .line 126
    :cond_d
    const/16 v17, -0x1

    :goto_8
    const/16 v6, 0x8

    if-le v5, v6, :cond_e

    .line 127
    invoke-virtual {v3, v6}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v6

    .line 128
    if-eqz v6, :cond_e

    .line 129
    invoke-virtual {v6, v8}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v18, v6

    goto :goto_9

    .line 132
    :cond_e
    move-object/from16 v18, v0

    :goto_9
    const/16 v6, 0x9

    if-le v5, v6, :cond_f

    .line 133
    invoke-virtual {v3, v6}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v6

    .line 134
    if-eqz v6, :cond_f

    .line 135
    invoke-virtual {v6, v8}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v19, v4

    goto :goto_a

    .line 138
    :cond_f
    const/16 v19, -0x1

    :goto_a
    const/16 v4, 0xa

    if-le v5, v4, :cond_10

    .line 139
    invoke-virtual {v3, v4}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v3

    .line 140
    if-eqz v3, :cond_10

    .line 141
    invoke-virtual {v3, v8}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v20, v0

    goto :goto_b

    .line 144
    :cond_10
    move-object/from16 v20, v0

    :goto_b
    nop

    .line 1182
    :try_start_6
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    .line 1183
    if-eqz v0, :cond_11

    .line 1184
    new-instance v3, Lccsancom/mbridge/msdk/foundation/entity/m;

    move-object v9, v3

    invoke-direct/range {v9 .. v20}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 1185
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/p;

    move-result-object v0

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/entity/m;)J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1189
    :cond_11
    goto :goto_d

    .line 1187
    :catchall_0
    move-exception v0

    .line 1188
    :try_start_7
    sget-object v3, Lccsancom/mbridge/msdk/mbsignalcommon/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 66
    :cond_12
    :goto_c
    nop

    .line 146
    :goto_d
    iget v0, v1, Lccsancom/mbridge/msdk/mbsignalcommon/a/a;->a:I

    const-string v3, "called reporter success"

    invoke-direct {v1, v0, v3, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 150
    goto :goto_e

    .line 147
    :catchall_1
    move-exception v0

    .line 148
    sget-object v3, Lccsancom/mbridge/msdk/mbsignalcommon/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget v3, v1, Lccsancom/mbridge/msdk/mbsignalcommon/a/a;->b:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 151
    :goto_e
    return-void
.end method
