.class public Lccsancom/google/android/gms/common/UserRecoverableException;
.super Ljava/lang/Exception;


# instance fields
.field private final mIntent:Lccsanandroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lccsanandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lccsancom/google/android/gms/common/UserRecoverableException;->mIntent:Lccsanandroid/content/Intent;

    .line 3
    return-void
.end method


# virtual methods
.method public getIntent()Lccsanandroid/content/Intent;
    .locals 2

    .line 4
    new-instance v0, Lccsanandroid/content/Intent;

    iget-object v1, p0, Lccsancom/google/android/gms/common/UserRecoverableException;->mIntent:Lccsanandroid/content/Intent;

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Intent;)V

    return-object v0
.end method
