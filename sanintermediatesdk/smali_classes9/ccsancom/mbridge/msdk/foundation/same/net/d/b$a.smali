.class public final Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/same/net/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/same/net/d/b;

.field private b:Ljava/lang/String;

.field private c:Ljava/io/File;

.field private d:Lccsancom/mbridge/msdk/foundation/same/net/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/mbridge/msdk/foundation/same/net/e<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lccsancom/mbridge/msdk/foundation/same/net/d/a;

.field private f:I


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/foundation/same/net/d/b;Ljava/io/File;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/foundation/same/net/e<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;->a:Lccsancom/mbridge/msdk/foundation/same/net/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;->c:Ljava/io/File;

    .line 86
    iput-object p4, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;->d:Lccsancom/mbridge/msdk/foundation/same/net/e;

    .line 87
    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;->b:Ljava/lang/String;

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/foundation/same/net/d/b;Ljava/io/File;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/e;Lccsancom/mbridge/msdk/foundation/same/net/d/b$1;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;-><init>(Lccsancom/mbridge/msdk/foundation/same/net/d/b;Ljava/io/File;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;I)I
    .locals 0

    .line 68
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;->f:I

    return p1
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;)Z
    .locals 4

    .line 68
    nop

    .line 1091
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;->f:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1093
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;->a:Lccsancom/mbridge/msdk/foundation/same/net/d/b;

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;->c:Ljava/io/File;

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;->b:Ljava/lang/String;

    .line 2065
    new-instance v3, Lccsancom/mbridge/msdk/foundation/same/net/d/a;

    invoke-direct {v3, v0, v2}, Lccsancom/mbridge/msdk/foundation/same/net/d/a;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1093
    iput-object v3, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;->e:Lccsancom/mbridge/msdk/foundation/same/net/d/a;

    .line 1095
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a$1;-><init>(Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;)V

    invoke-virtual {v3, v0}, Lccsancom/mbridge/msdk/foundation/same/net/d/a;->a(Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    .line 1138
    iput v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;->f:I

    .line 1139
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;->a:Lccsancom/mbridge/msdk/foundation/same/net/d/b;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/net/d/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/d/b;)Lccsancom/mbridge/msdk/foundation/same/net/j;

    move-result-object v0

    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;->e:Lccsancom/mbridge/msdk/foundation/same/net/d/a;

    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/foundation/same/net/j;->a(Lccsancom/mbridge/msdk/foundation/same/net/i;)V

    .line 1140
    nop

    .line 68
    :goto_0
    return v1
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;)Lccsancom/mbridge/msdk/foundation/same/net/e;
    .locals 0

    .line 68
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;->d:Lccsancom/mbridge/msdk/foundation/same/net/e;

    return-object p0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 148
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/d/b$a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
