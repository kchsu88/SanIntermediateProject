.class public Lccsancom/mbridge/msdk/foundation/same/report/b/a;
.super Ljava/lang/Object;
.source "CrashHandlerUtil.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static volatile c:Lccsancom/mbridge/msdk/foundation/same/report/b/a;


# instance fields
.field a:Lccsanandroid/os/Handler;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private e:Ljava/lang/Throwable;


# direct methods
.method private constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/report/b/a$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/foundation/same/report/b/a$1;-><init>(Lccsancom/mbridge/msdk/foundation/same/report/b/a;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->a:Lccsanandroid/os/Handler;

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->b:Ljava/lang/ref/WeakReference;

    .line 55
    return-void
.end method

.method public static a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/report/b/a;
    .locals 2

    .line 58
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->c:Lccsancom/mbridge/msdk/foundation/same/report/b/a;

    if-nez v0, :cond_1

    .line 59
    const-class v0, Lccsancom/mbridge/msdk/foundation/same/report/b/a;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->c:Lccsancom/mbridge/msdk/foundation/same/report/b/a;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/report/b/a;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/foundation/same/report/b/a;-><init>(Lccsanandroid/content/Context;)V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->c:Lccsancom/mbridge/msdk/foundation/same/report/b/a;

    .line 63
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 65
    :cond_1
    :goto_0
    sget-object p0, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->c:Lccsancom/mbridge/msdk/foundation/same/report/b/a;

    return-object p0
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    .line 210
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    .line 98
    move-object/from16 v1, p0

    const-string v2, "appname"

    const-string v3, "appversionname"

    const-string v4, "-1"

    const-string v5, "appversioncode"

    const-string v6, "osversion"

    const-string v7, ""

    :try_start_0
    new-instance v8, Lccsanorg/json/JSONObject;

    invoke-direct {v8}, Lccsanorg/json/JSONObject;-><init>()V

    .line 99
    iget-object v0, v1, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/Context;

    .line 100
    if-nez v0, :cond_0

    .line 101
    return-object v7

    .line 102
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double v9, v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v11

    const-wide/high16 v13, 0x4130000000000000L    # 1048576.0

    div-double/2addr v9, v13

    double-to-float v9, v9

    .line 103
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v11

    const-wide/high16 v15, 0x4130000000000000L    # 1048576.0

    div-double/2addr v13, v15

    double-to-float v10, v13

    .line 104
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    long-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v11

    const-wide/high16 v11, 0x4130000000000000L    # 1048576.0

    div-double/2addr v13, v11

    double-to-float v11, v13

    .line 105
    :try_start_3
    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    .line 106
    invoke-virtual {v12}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v13

    .line 107
    move-object v15, v2

    move-object/from16 v16, v3

    invoke-virtual {v12}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    .line 108
    invoke-static {v0, v13, v14}, Lccsanandroid/text/format/Formatter;->formatFileSize(Lccsanandroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 109
    invoke-static {v0, v2, v3}, Lccsanandroid/text/format/Formatter;->formatFileSize(Lccsanandroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 110
    const-string v3, "max_memory"

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 111
    const-string v3, "memoryby_app"

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 112
    const-string v3, "remaining_memory"

    float-to-double v9, v11

    invoke-virtual {v8, v3, v9, v10}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;D)Lccsanorg/json/JSONObject;

    .line 113
    const-string v3, "sdcard_remainder"

    invoke-virtual {v8, v3, v12}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 114
    const-string v3, "totalspacestr"

    invoke-virtual {v8, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 115
    const-string v2, "crashtime"

    move-object/from16 v3, p2

    invoke-virtual {v8, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 116
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v2

    const-string v3, "sdk_app_id"

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    const-string v3, "appid"

    invoke-virtual {v8, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    :cond_1
    :try_start_4
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v8, v6, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 122
    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->b(Lccsanandroid/content/Context;)I

    move-result v2

    invoke-virtual {v8, v5, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 123
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->c(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v3, v16

    :try_start_5
    invoke-virtual {v8, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 124
    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->d(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v2, v15

    :try_start_6
    invoke-virtual {v8, v2, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 130
    goto :goto_1

    .line 125
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v15

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v2, v15

    move-object/from16 v3, v16

    .line 126
    :goto_0
    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {v8, v6, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 127
    invoke-virtual {v8, v5, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 128
    invoke-virtual {v8, v3, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 129
    invoke-virtual {v8, v2, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 131
    :goto_1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 132
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 133
    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 134
    const-string v2, "crashinfo"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 135
    invoke-virtual {v8}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 137
    const-string v3, "key=2000052"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-object v0

    .line 140
    :catchall_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    return-object v7
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/foundation/same/report/b/a;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 42
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    :try_start_0
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 242
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 243
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 244
    const/4 p2, 0x1

    .line 245
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    nop

    .line 247
    goto :goto_0

    .line 250
    :cond_0
    goto :goto_1

    .line 248
    :catch_0
    move-exception p1

    .line 249
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    :goto_1
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Thread;)V
    .locals 4

    .line 219
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 220
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->b()Ljava/util/HashMap;

    move-result-object p1

    .line 221
    if-eqz p1, :cond_0

    const-string p2, "file"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 223
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 224
    const-string v2, "time"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p3, v2}, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "crashinfo"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iput-object v1, v0, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    const/16 p1, 0x65

    iput p1, v0, Lccsanandroid/os/Message;->what:I

    .line 228
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->a:Lccsanandroid/os/Handler;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 229
    invoke-direct {p0, p4, p3}, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 231
    :cond_0
    goto :goto_0

    .line 232
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p1, :cond_2

    .line 233
    invoke-interface {p1, p4, p3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 236
    :cond_2
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 256
    const-wide/16 p1, 0x7d0

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    goto :goto_0

    .line 257
    :catch_0
    move-exception p1

    .line 258
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 260
    :goto_0
    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Lccsanandroid/os/Process;->killProcess(I)V

    .line 261
    return-void
.end method

.method private b(Lccsanandroid/content/Context;)I
    .locals 2

    .line 147
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    .line 149
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lccsanandroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object p1

    .line 150
    iget p1, p1, Lccsanandroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 151
    :catch_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Lccsanandroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 155
    return v1
.end method

.method private b()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 265
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->e:Ljava/lang/Throwable;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 266
    return-object v2

    .line 268
    :cond_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/b/c;->h:Lccsancom/mbridge/msdk/foundation/same/b/c;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/same/b/e;->b(Lccsancom/mbridge/msdk/foundation/same/b/c;)Ljava/lang/String;

    move-result-object v1

    .line 269
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 271
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 273
    :cond_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 274
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sdkcrash"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v1, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 277
    iget-object v5, p0, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->e:Ljava/lang/Throwable;

    invoke-direct {p0, v5, v3}, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    const-string v5, "===="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    iget-object v5, p0, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->e:Ljava/lang/Throwable;

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 280
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 281
    const-string v1, "file"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v1, "time"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    return-object v0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    return-object v2
.end method

.method private static c(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 159
    const-string v0, ""

    .line 161
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v1

    .line 163
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lccsanandroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object p0

    .line 164
    iget-object v0, p0, Lccsanandroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    goto :goto_0

    .line 165
    :catch_0
    move-exception p0

    .line 166
    invoke-virtual {p0}, Lccsanandroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    return-object v0
.end method

.method private d(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 172
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    .line 174
    :try_start_0
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object v0

    .line 175
    iget-object v0, v0, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    .line 176
    iget v0, v0, Lccsanandroid/content/pm/ApplicationInfo;->labelRes:I

    .line 177
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 178
    :catch_0
    move-exception p1

    .line 179
    invoke-virtual {p1}, Lccsanandroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 182
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 69
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 70
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 71
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .line 188
    :try_start_0
    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->e:Ljava/lang/Throwable;

    .line 189
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 190
    if-nez v0, :cond_0

    .line 191
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 193
    :cond_0
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->m()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "mbridge"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->m()Ljava/lang/String;

    move-result-object v0

    .line 194
    :goto_0
    const-string v1, "<mvpackage>(.*?)</mvpackage>"

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 195
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 196
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 197
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 198
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2, p2, p1}, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Thread;)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    :cond_2
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Thread;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_3
    goto :goto_2

    .line 203
    :catch_0
    move-exception v0

    .line 204
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/same/report/b/a;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    :goto_2
    return-void
.end method
