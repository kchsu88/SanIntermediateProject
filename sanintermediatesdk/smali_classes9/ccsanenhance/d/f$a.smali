.class public Lccsanenhance/d/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanenhance/d/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanenhance/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lccsanenhance/d/f;


# direct methods
.method public constructor <init>(Lccsanenhance/d/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsanenhance/d/f$a;->a:Lccsanenhance/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lccsanenhance/d/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsanenhance/d/f$a;->a:Lccsanenhance/d/f;

    invoke-virtual {v0, p1}, Lccsanenhance/d/f;->a(Lccsanenhance/d/b;)V

    return-void
.end method
