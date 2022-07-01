.class public final Lccsancom/mbridge/msdk/foundation/same/c/d;
.super Lccsancom/mbridge/msdk/foundation/same/e/a;
.source "CommonImageTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/foundation/same/c/d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lccsancom/mbridge/msdk/foundation/same/c/d$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/e/a;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/same/c/d;->g:Z

    .line 53
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/c/d;->a:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/same/c/d;->e:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/same/c/d;->f:Ljava/lang/String;

    .line 56
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/foundation/same/c/d;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/same/c/d;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/foundation/same/c/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/same/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/c/d;->h:Lccsancom/mbridge/msdk/foundation/same/c/d$a;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/foundation/same/c/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/foundation/same/c/d;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/same/c/d;->e:Ljava/lang/String;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 64
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/c/d;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 69
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 73
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/c/d;->e:Ljava/lang/String;

    new-instance v2, Lccsancom/mbridge/msdk/foundation/same/c/d$1;

    invoke-direct {v2, p0}, Lccsancom/mbridge/msdk/foundation/same/c/d$1;-><init>(Lccsancom/mbridge/msdk/foundation/same/c/d;)V

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/same/net/h/b;->a(Ljava/io/File;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/c/d;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lccsancom/mbridge/msdk/foundation/same/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :catch_1
    move-exception v0

    .line 97
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/c/d;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lccsancom/mbridge/msdk/foundation/same/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    :cond_2
    :goto_0
    nop

    .line 104
    :goto_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 136
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/same/c/d;->g:Z

    if-nez v0, :cond_3

    .line 137
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/c/d;->f:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/c/d;->e:Ljava/lang/String;

    const-string v1, "save path is null."

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/foundation/same/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/c/d;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/same/c/d;->c()V

    goto :goto_1

    .line 143
    :cond_2
    :goto_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/c/d;->e()V

    .line 147
    :goto_1
    goto :goto_2

    .line 148
    :cond_3
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/c/d;->e()V

    .line 150
    :goto_2
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/c/d$a;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/c/d;->h:Lccsancom/mbridge/msdk/foundation/same/c/d$a;

    .line 50
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/foundation/same/c/d;->g:Z

    .line 42
    return-void
.end method

.method public final b()V
    .locals 0

    .line 155
    return-void
.end method

.method protected final c()V
    .locals 3

    .line 107
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/c/d;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/c/d;->e:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/c/d;->f:Ljava/lang/String;

    .line 1117
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/c/d;->h:Lccsancom/mbridge/msdk/foundation/same/c/d$a;

    if-eqz v2, :cond_0

    .line 1118
    invoke-interface {v2, v0, v1}, Lccsancom/mbridge/msdk/foundation/same/c/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    goto :goto_0

    .line 111
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load image faild.because file["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/c/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] is not exist!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/c/d;->e:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lccsancom/mbridge/msdk/foundation/same/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void
.end method
