.class public final Lccsancom/mbridge/msdk/foundation/controller/a$a$a;
.super Ljava/lang/Object;
.source "MBSDKContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/controller/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/controller/a$a;

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/controller/a$a;Ljava/lang/String;Z)V
    .locals 0

    .line 279
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/a$a$a;->a:Lccsancom/mbridge/msdk/foundation/controller/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/controller/a$a$a;->b:Ljava/lang/String;

    .line 281
    iput-boolean p3, p0, Lccsancom/mbridge/msdk/foundation/controller/a$a$a;->c:Z

    .line 282
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/a$a$a;->b:Ljava/lang/String;

    return-object v0
.end method
