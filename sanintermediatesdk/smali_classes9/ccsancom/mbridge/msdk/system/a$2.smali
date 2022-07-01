.class final Lccsancom/mbridge/msdk/system/a$2;
.super Ljava/lang/Object;
.source "MBridgeSDKImpl.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/system/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/system/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/system/a;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lccsancom/mbridge/msdk/system/a$2;->a:Lccsancom/mbridge/msdk/system/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 206
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public final getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 211
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->b()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
