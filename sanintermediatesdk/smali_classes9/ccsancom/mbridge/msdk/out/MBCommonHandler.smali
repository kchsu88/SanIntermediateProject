.class public abstract Lccsancom/mbridge/msdk/out/MBCommonHandler;
.super Ljava/lang/Object;
.source "MBCommonHandler.java"


# instance fields
.field protected context:Lccsanandroid/content/Context;

.field protected properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lccsanandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lccsanandroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/MBCommonHandler;->properties:Ljava/util/Map;

    .line 15
    iput-object p2, p0, Lccsancom/mbridge/msdk/out/MBCommonHandler;->context:Lccsanandroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public abstract load()Z
.end method

.method public abstract release()V
.end method
