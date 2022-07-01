.class public final Lccsancom/mbridge/msdk/foundation/entity/h;
.super Ljava/lang/Object;
.source "LoopEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/h;->b:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/entity/h;->a:Ljava/lang/String;

    .line 13
    iput p3, p0, Lccsancom/mbridge/msdk/foundation/entity/h;->c:I

    .line 14
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/h;->b:Ljava/lang/String;

    return-object v0
.end method
