.class final Lccsancom/mbridge/msdk/click/g$a;
.super Lccsancom/mbridge/msdk/foundation/same/e/a;
.source "WebViewSpiderLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/click/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/click/g;

.field private final e:Ljava/util/concurrent/Semaphore;

.field private final f:Lccsanandroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field private k:Z

.field private l:Z

.field private m:Lccsancom/mbridge/msdk/click/f$a;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/click/g;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;ZZ)V
    .locals 1

    .line 82
    iput-object p1, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/e/a;-><init>()V

    .line 62
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/click/g$a;->e:Ljava/util/concurrent/Semaphore;

    .line 197
    new-instance p1, Lccsancom/mbridge/msdk/click/g$a$1;

    invoke-direct {p1, p0}, Lccsancom/mbridge/msdk/click/g$a$1;-><init>(Lccsancom/mbridge/msdk/click/g$a;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/click/g$a;->m:Lccsancom/mbridge/msdk/click/f$a;

    .line 83
    iput-object p2, p0, Lccsancom/mbridge/msdk/click/g$a;->f:Lccsanandroid/content/Context;

    .line 84
    iput-object p3, p0, Lccsancom/mbridge/msdk/click/g$a;->g:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lccsancom/mbridge/msdk/click/g$a;->h:Ljava/lang/String;

    .line 86
    iput-object p5, p0, Lccsancom/mbridge/msdk/click/g$a;->i:Ljava/lang/String;

    .line 87
    iput-object p6, p0, Lccsancom/mbridge/msdk/click/g$a;->j:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 88
    iput-boolean p7, p0, Lccsancom/mbridge/msdk/click/g$a;->k:Z

    .line 89
    iput-boolean p8, p0, Lccsancom/mbridge/msdk/click/g$a;->l:Z

    .line 90
    return-void
.end method

.method private a(Ljava/lang/String;ZZLccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;
    .locals 10

    .line 93
    const-string v0, ""

    .line 94
    iget-object v1, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v1}, Lccsancom/mbridge/msdk/click/g;->a(Lccsancom/mbridge/msdk/click/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lccsancom/mbridge/msdk/click/g$a;->f:Lccsanandroid/content/Context;

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/b/a;->a(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    :cond_0
    new-instance v1, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;-><init>()V

    .line 102
    new-instance v2, Lccsancom/mbridge/msdk/click/e;

    invoke-direct {v2}, Lccsancom/mbridge/msdk/click/e;-><init>()V

    .line 104
    nop

    .line 105
    nop

    .line 107
    :try_start_0
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/click/g$a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 108
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    .line 109
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v0

    move-object v0, v4

    goto :goto_0

    .line 113
    :catch_0
    move-exception v3

    goto :goto_1

    .line 107
    :cond_1
    move-object v3, v0

    .line 115
    :goto_0
    goto :goto_2

    .line 113
    :catch_1
    move-exception v3

    move-object v4, v0

    .line 114
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v0

    move-object v0, v4

    .line 116
    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    const/16 v6, 0xa

    if-ge v5, v6, :cond_10

    .line 118
    iget-object v6, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v6}, Lccsancom/mbridge/msdk/click/g;->b(Lccsancom/mbridge/msdk/click/g;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_2

    .line 119
    return-object v7

    .line 122
    :cond_2
    iget-object v6, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-virtual {v2, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/click/e;->a(Ljava/lang/String;ZZLccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsancom/mbridge/msdk/click/e$a;

    move-result-object v8

    invoke-static {v6, v8}, Lccsancom/mbridge/msdk/click/g;->a(Lccsancom/mbridge/msdk/click/g;Lccsancom/mbridge/msdk/click/e$a;)Lccsancom/mbridge/msdk/click/e$a;

    .line 123
    iget-object v6, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v6}, Lccsancom/mbridge/msdk/click/g;->c(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/e$a;

    move-result-object v6

    if-nez v6, :cond_3

    .line 124
    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1, v4}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setSuccess(Z)V

    .line 126
    goto/16 :goto_8

    .line 128
    :cond_3
    iget-object v6, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v6}, Lccsancom/mbridge/msdk/click/g;->c(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/e$a;

    move-result-object v6

    iget-object v6, v6, Lccsancom/mbridge/msdk/click/e$a;->h:Ljava/lang/String;

    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v8, 0x1

    if-nez v6, :cond_4

    .line 129
    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {p1}, Lccsancom/mbridge/msdk/click/g;->c(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/e$a;

    move-result-object p1

    iget-object p1, p1, Lccsancom/mbridge/msdk/click/e$a;->h:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setExceptionMsg(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1, v8}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setType(I)V

    .line 132
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {p1}, Lccsancom/mbridge/msdk/click/g;->c(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/e$a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/click/e$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setHeader(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1, v4}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setSuccess(Z)V

    .line 136
    goto/16 :goto_8

    .line 138
    :cond_4
    invoke-virtual {v1, v8}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setSuccess(Z)V

    .line 139
    iget-object v6, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v6}, Lccsancom/mbridge/msdk/click/g;->c(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/e$a;

    move-result-object v6

    iget v6, v6, Lccsancom/mbridge/msdk/click/e$a;->f:I

    .line 1282
    const/16 v9, 0x12d

    if-eq v6, v9, :cond_6

    const/16 v9, 0x12e

    if-eq v6, v9, :cond_6

    const/16 v9, 0x133

    if-ne v6, v9, :cond_5

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v6, 0x1

    .line 139
    :goto_5
    if-eqz v6, :cond_d

    .line 141
    invoke-virtual {v1, v8}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setIs302Jump(Z)V

    .line 142
    iget-object v6, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v6}, Lccsancom/mbridge/msdk/click/g;->c(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/e$a;

    move-result-object v6

    iget-object v6, v6, Lccsancom/mbridge/msdk/click/e$a;->a:Ljava/lang/String;

    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 143
    invoke-virtual {v1, v8}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setjumpDone(Z)V

    .line 144
    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    .line 145
    goto/16 :goto_8

    .line 147
    :cond_7
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {p1}, Lccsancom/mbridge/msdk/click/g;->c(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/e$a;

    move-result-object p1

    iget-object p1, p1, Lccsancom/mbridge/msdk/click/e$a;->a:Ljava/lang/String;

    .line 149
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/click/g$a;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 150
    nop

    .line 2278
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 150
    if-eqz v6, :cond_8

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 151
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 152
    move-object v0, v7

    move-object v3, v0

    goto :goto_6

    .line 154
    :cond_8
    invoke-virtual {v1, v8}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setjumpDone(Z)V

    .line 155
    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    .line 156
    goto/16 :goto_8

    .line 158
    :cond_9
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/click/g$a;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 160
    :try_start_2
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    .line 161
    invoke-virtual {v6}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-virtual {v6}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 165
    goto :goto_6

    .line 163
    :catch_2
    move-exception v6

    .line 164
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    :cond_a
    :goto_6
    nop

    .line 2286
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/t$a;->a(Ljava/lang/String;)Z

    move-result v6

    .line 168
    if-eqz v6, :cond_b

    .line 169
    invoke-virtual {v1, v8}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setjumpDone(Z)V

    .line 170
    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    .line 171
    goto :goto_8

    .line 174
    :cond_b
    iget-object v6, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v6}, Lccsancom/mbridge/msdk/click/g;->a(Lccsancom/mbridge/msdk/click/g;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 175
    iget-object v6, p0, Lccsancom/mbridge/msdk/click/g$a;->f:Lccsanandroid/content/Context;

    invoke-static {v6, p1}, Lccsancom/mbridge/msdk/b/a;->a(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 176
    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 177
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 116
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 181
    :cond_d
    iget-object p2, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {p2}, Lccsancom/mbridge/msdk/click/g;->c(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/e$a;

    move-result-object p2

    iget p2, p2, Lccsancom/mbridge/msdk/click/e$a;->f:I

    .line 3270
    const/16 p3, 0xc8

    if-ne p2, p3, :cond_e

    const/4 p2, 0x1

    goto :goto_7

    :cond_e
    const/4 p2, 0x0

    .line 181
    :goto_7
    if-eqz p2, :cond_f

    .line 182
    invoke-virtual {v1, v8}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setjumpDone(Z)V

    .line 183
    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    .line 184
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {p1}, Lccsancom/mbridge/msdk/click/g;->c(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/e$a;

    move-result-object p1

    iget-object p1, p1, Lccsancom/mbridge/msdk/click/e$a;->g:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setContent(Ljava/lang/String;)V

    .line 185
    goto :goto_8

    .line 187
    :cond_f
    invoke-virtual {v1, v4}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setjumpDone(Z)V

    .line 188
    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    .line 193
    :cond_10
    :goto_8
    return-object v1
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/click/g$a;)V
    .locals 0

    .line 60
    nop

    .line 5069
    iget-object p0, p0, Lccsancom/mbridge/msdk/click/g$a;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 60
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/click/g$a;Ljava/lang/String;)Z
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/click/g$a;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .line 253
    nop

    .line 254
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->j:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLinkType()I

    .line 257
    :cond_0
    nop

    .line 3286
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/t$a;->a(Ljava/lang/String;)Z

    move-result v0

    .line 257
    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setCode(I)V

    .line 259
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    .line 260
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {p1}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object p1

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setjumpDone(Z)V

    .line 261
    return v1

    .line 263
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setCode(I)V

    .line 264
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    .line 266
    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 0

    .line 274
    invoke-static {p1}, Lccsanandroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public final a()V
    .locals 14

    .line 292
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->e(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->e(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/click/d;->a(Ljava/lang/Object;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    new-instance v1, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;-><init>()V

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/click/g;->a(Lccsancom/mbridge/msdk/click/g;Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    .line 297
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/g$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/g$a;->g:Ljava/lang/String;

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/click/g$a;->k:Z

    iget-boolean v3, p0, Lccsancom/mbridge/msdk/click/g$a;->l:Z

    iget-object v4, p0, Lccsancom/mbridge/msdk/click/g$a;->j:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0, v1, v2, v3, v4}, Lccsancom/mbridge/msdk/click/g$a;->a(Ljava/lang/String;ZZLccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/click/g;->a(Lccsancom/mbridge/msdk/click/g;Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    .line 300
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getExceptionMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 301
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setSuccess(Z)V

    .line 303
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->b(Lccsancom/mbridge/msdk/click/g;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 304
    return-void

    .line 307
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_3

    .line 308
    return-void

    .line 310
    :cond_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->c(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/e$a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 311
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    iget-object v2, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v2}, Lccsancom/mbridge/msdk/click/g;->c(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/e$a;

    move-result-object v2

    iget v2, v2, Lccsancom/mbridge/msdk/click/e$a;->f:I

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setStatusCode(I)V

    .line 313
    :cond_4
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 4286
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/t$a;->a(Ljava/lang/String;)Z

    move-result v0

    .line 313
    if-nez v0, :cond_6

    const/16 v0, 0xc8

    iget-object v2, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    .line 314
    invoke-static {v2}, Lccsancom/mbridge/msdk/click/g;->c(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/e$a;

    move-result-object v2

    iget v2, v2, Lccsancom/mbridge/msdk/click/e$a;->f:I

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EXCEPTION_CAMPAIGN_NOT_ACTIVE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 315
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setType(I)V

    .line 316
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 317
    new-instance v1, Lccsancom/mbridge/msdk/click/f;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/click/f;-><init>()V

    iget-object v2, p0, Lccsancom/mbridge/msdk/click/g$a;->h:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/click/g$a;->i:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/mbridge/msdk/click/g$a;->f:Lccsanandroid/content/Context;

    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    .line 318
    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lccsancom/mbridge/msdk/click/g$a;->m:Lccsancom/mbridge/msdk/click/f$a;

    .line 317
    invoke-virtual/range {v1 .. v7}, Lccsancom/mbridge/msdk/click/f;->a(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/click/f$a;)V

    goto :goto_0

    .line 321
    :cond_5
    :try_start_0
    new-instance v8, Lccsancom/mbridge/msdk/click/f;

    invoke-direct {v8}, Lccsancom/mbridge/msdk/click/f;-><init>()V

    iget-object v9, p0, Lccsancom/mbridge/msdk/click/g$a;->h:Ljava/lang/String;

    iget-object v10, p0, Lccsancom/mbridge/msdk/click/g$a;->i:Ljava/lang/String;

    iget-object v11, p0, Lccsancom/mbridge/msdk/click/g$a;->f:Lccsanandroid/content/Context;

    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lccsancom/mbridge/msdk/click/g$a;->m:Lccsancom/mbridge/msdk/click/f$a;

    invoke-virtual/range {v8 .. v13}, Lccsancom/mbridge/msdk/click/f;->a(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/click/f$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 326
    :goto_0
    nop

    .line 5065
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 326
    goto :goto_1

    .line 329
    :cond_6
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->c(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/e$a;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 330
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setType(I)V

    .line 331
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v1}, Lccsancom/mbridge/msdk/click/g;->c(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/e$a;

    move-result-object v1

    iget-object v1, v1, Lccsancom/mbridge/msdk/click/e$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setExceptionMsg(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v1}, Lccsancom/mbridge/msdk/click/g;->c(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/e$a;

    move-result-object v1

    iget v1, v1, Lccsancom/mbridge/msdk/click/e$a;->f:I

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setStatusCode(I)V

    .line 333
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v1}, Lccsancom/mbridge/msdk/click/g;->c(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/click/e$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setHeader(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v1}, Lccsancom/mbridge/msdk/click/g;->c(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/e$a;

    move-result-object v1

    iget-object v1, v1, Lccsancom/mbridge/msdk/click/e$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setContent(Ljava/lang/String;)V

    .line 336
    :cond_7
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/click/g$a;->a(Ljava/lang/String;)Z

    .line 339
    :goto_1
    return-void
.end method

.method public final b()V
    .locals 0

    .line 344
    return-void
.end method
