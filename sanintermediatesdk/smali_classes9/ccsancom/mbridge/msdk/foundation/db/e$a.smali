.class final Lccsancom/mbridge/msdk/foundation/db/e$a;
.super Lccsanandroid/database/sqlite/SQLiteOpenHelper;
.source "CommonAbsDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/db/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/db/e;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/foundation/db/e;Lccsanandroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 40
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/db/e$a;->a:Lccsancom/mbridge/msdk/foundation/db/e;

    .line 41
    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1, p4}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 42
    return-void
.end method


# virtual methods
.method public final onCreate(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/db/e$a;->a:Lccsancom/mbridge/msdk/foundation/db/e;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/db/e;->a(Lccsanandroid/database/sqlite/SQLiteDatabase;)V

    .line 47
    return-void
.end method

.method public final onDowngrade(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 56
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/db/e$a;->a:Lccsancom/mbridge/msdk/foundation/db/e;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/foundation/db/e;->b(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V

    .line 57
    return-void
.end method

.method public final onUpgrade(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 51
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/db/e$a;->a:Lccsancom/mbridge/msdk/foundation/db/e;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/foundation/db/e;->a(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V

    .line 52
    return-void
.end method
