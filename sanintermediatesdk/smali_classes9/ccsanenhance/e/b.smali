.class public Lccsanenhance/e/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lccsanenhance/d/c;

.field public b:Ljava/util/concurrent/locks/Lock;

.field public c:Ljava/util/concurrent/locks/Condition;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lccsanenhance/e/b;->d:I

    return-void
.end method


# virtual methods
.method public a(I)Lccsanenhance/e/b;
    .locals 0

    .line 5
    iput p1, p0, Lccsanenhance/e/b;->d:I

    return-object p0
.end method

.method public a(Lccsanenhance/d/c;)Lccsanenhance/e/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsanenhance/e/b;->a:Lccsanenhance/d/c;

    return-object p0
.end method

.method public a(Ljava/util/concurrent/locks/Condition;)Lccsanenhance/e/b;
    .locals 0

    .line 4
    iput-object p1, p0, Lccsanenhance/e/b;->c:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method public a(Ljava/util/concurrent/locks/Lock;)Lccsanenhance/e/b;
    .locals 0

    .line 2
    iput-object p1, p0, Lccsanenhance/e/b;->b:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method public a()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .line 3
    iget-object v0, p0, Lccsanenhance/e/b;->c:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method public b()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsanenhance/e/b;->b:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method public c()Lccsanenhance/d/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsanenhance/e/b;->a:Lccsanenhance/d/c;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lccsanenhance/e/b;->d:I

    return v0
.end method
