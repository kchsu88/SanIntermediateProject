.class public final Lccsancom/intermediate/sanintermediatesdk/MainActivity;
.super Lccsanandroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.kt"


# annotations
.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "Lccsancom/intermediate/sanintermediatesdk/MainActivity;",
        "Lccsanandroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Lccsanandroid/os/Bundle;",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lccsanandroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 8
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/app/AppCompatActivity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 9
    return-void
.end method
