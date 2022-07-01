.class public final Lccsancom/mbridge/msdk/mbsignalcommon/windvane/i;
.super Ljava/lang/Object;
.source "WindVaneSignalCommunication.java"

# interfaces
.implements Lccsanandroid/os/Handler$Callback;
.implements Lccsancom/mbridge/msdk/mbsignalcommon/windvane/c;


# instance fields
.field protected a:Ljava/util/regex/Pattern;

.field protected b:Ljava/lang/String;

.field protected final c:I

.field protected d:Lccsanandroid/content/Context;

.field protected e:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

.field protected f:Lccsanandroid/os/Handler;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/i;->c:I

    .line 27
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/i;->d:Lccsanandroid/content/Context;

    .line 28
    new-instance p1, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;Lccsanandroid/os/Handler$Callback;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/i;->f:Lccsanandroid/os/Handler;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/i;->e:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 39
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .line 158
    invoke-static {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/j;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1148
    iput-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/i;->a:Ljava/util/regex/Pattern;

    .line 160
    nop

    .line 1153
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/i;->b:Ljava/lang/String;

    .line 161
    const/4 p1, 0x1

    return p1

    .line 163
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 7

    .line 76
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    return-void

    .line 80
    :cond_0
    nop

    .line 1042
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 1043
    goto :goto_0

    .line 1046
    :cond_1
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/i;->e:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-static {v3, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/c;->a(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    move-result-object v3

    .line 1047
    if-eqz v3, :cond_2

    .line 1048
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/i;->e:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iput-object p1, v3, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1049
    goto :goto_1

    .line 1052
    :cond_2
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/i;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 1053
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1054
    new-instance v3, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    invoke-direct {v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;-><init>()V

    .line 1055
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    .line 1056
    const/4 v5, 0x5

    if-lt v4, v5, :cond_3

    .line 1057
    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->f:Ljava/lang/String;

    .line 1059
    :cond_3
    const/4 v5, 0x3

    if-lt v4, v5, :cond_5

    .line 1060
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->d:Ljava/lang/String;

    .line 1061
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->g:Ljava/lang/String;

    .line 1062
    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->e:Ljava/lang/String;

    .line 1063
    sget-object p1, Lccsancom/mbridge/msdk/mbsignalcommon/base/e;->k:Ljava/util/HashMap;

    if-eqz p1, :cond_4

    sget-object p1, Lccsancom/mbridge/msdk/mbsignalcommon/base/e;->k:Ljava/util/HashMap;

    iget-object v4, v3, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1064
    sget-object p1, Lccsancom/mbridge/msdk/mbsignalcommon/base/e;->k:Ljava/util/HashMap;

    iget-object v4, v3, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v3, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->e:Ljava/lang/String;

    .line 1066
    :cond_4
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/i;->e:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iput-object p1, v3, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1067
    goto :goto_1

    .line 1071
    :cond_5
    :goto_0
    move-object v3, v1

    .line 80
    :goto_1
    nop

    .line 82
    if-nez v3, :cond_6

    .line 83
    return-void

    .line 86
    :cond_6
    nop

    .line 1090
    iget-object p1, v3, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-nez p1, :cond_7

    goto :goto_2

    .line 1091
    :cond_7
    iget-object p1, v3, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iget-object v1, v3, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getJsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1093
    :goto_2
    if-nez v1, :cond_8

    .line 1094
    goto :goto_4

    .line 1096
    :cond_8
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/i;->d:Lccsanandroid/content/Context;

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 1097
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lccsancom/mbridge/msdk/mbsignalcommon/c/a;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lccsancom/mbridge/msdk/mbsignalcommon/c/a$c;

    move-result-object p1

    .line 1098
    iget-object v4, v3, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->e:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    aput-object v6, v0, v5

    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v2

    invoke-virtual {p1, v4, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/c/a$c;->a(Ljava/lang/String;[Ljava/lang/Class;)Lccsancom/mbridge/msdk/mbsignalcommon/c/a$d;

    move-result-object p1

    .line 1100
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/c/a$d;->a()Ljava/lang/reflect/Method;

    .line 1101
    if-eqz v1, :cond_9

    .line 1102
    instance-of v0, v1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/h;

    if-eqz v0, :cond_9

    .line 1103
    iput-object v1, v3, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Ljava/lang/Object;

    .line 1104
    iput-object p1, v3, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->c:Lccsancom/mbridge/msdk/mbsignalcommon/c/a$d;

    .line 1105
    iput-object v1, v3, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Ljava/lang/Object;

    .line 1106
    nop

    .line 1117
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object p1

    .line 1118
    iput v2, p1, Lccsanandroid/os/Message;->what:I

    .line 1119
    iput-object v3, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 1120
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/i;->f:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z
    :try_end_0
    .catch Lccsancom/mbridge/msdk/mbsignalcommon/c/a$b$a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1111
    :catch_0
    move-exception p1

    .line 1112
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 1109
    :catch_1
    move-exception p1

    .line 1110
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/c/a$b$a;->printStackTrace()V

    .line 1113
    :cond_9
    :goto_3
    nop

    .line 87
    :goto_4
    return-void
.end method

.method public final handleMessage(Lccsanandroid/os/Message;)Z
    .locals 5

    .line 125
    iget-object v0, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 126
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 127
    return v1

    .line 130
    :cond_0
    :try_start_0
    iget p1, p1, Lccsanandroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    .line 141
    goto :goto_1

    .line 132
    :pswitch_0
    iget-object p1, v0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Ljava/lang/Object;

    .line 133
    iget-object v2, v0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->c:Lccsancom/mbridge/msdk/mbsignalcommon/c/a$d;

    .line 134
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    iget-object v4, v0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->f:Ljava/lang/String;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "{}"

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, v0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->f:Ljava/lang/String;

    :goto_0
    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 134
    invoke-virtual {v2, p1, v3}, Lccsancom/mbridge/msdk/mbsignalcommon/c/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    return v4

    .line 139
    :catch_0
    move-exception p1

    .line 140
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
