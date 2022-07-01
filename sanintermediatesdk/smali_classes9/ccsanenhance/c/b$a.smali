.class public Lccsanenhance/c/b$a;
.super Lccsanenhance/d/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanenhance/c/b;->a(Lccsanenhance/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lccsanenhance/c/a;


# direct methods
.method public constructor <init>(Lccsanenhance/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsanenhance/c/b$a;->a:Lccsanenhance/c/a;

    invoke-direct {p0}, Lccsanenhance/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsanenhance/c/b$a;->a:Lccsanenhance/c/a;

    throw v0
.end method
