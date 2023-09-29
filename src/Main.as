void OnEnabled() {
    if (Camera::GetCurrent() is null) return;
    Camera::GetCurrent().ScissorRect = false;
}

void OnDisabled() {
    if (Camera::GetCurrent() is null) return;
    Camera::GetCurrent().ScissorRect = true;
}

void OnDestroyed() {
    if (Camera::GetCurrent() is null) return;
    Camera::GetCurrent().ScissorRect = true;
}

void Main() {
    while (true) {
        yield();
        if (Camera::GetCurrent() is null) continue;
        Camera::GetCurrent().ScissorRect = false;
    }
}