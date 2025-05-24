-- +goose Up
-- +goose StatementBegin
create table if not exists employee
(
    id          bigint primary key generated always as identity,
    name        text not null,
    created_at  timestamptz default current_timestamp,
    updated_at  timestamptz default current_timestamp
);

create table if not exists role
(
    id          bigint primary key generated always as identity,
    name        text not null,
    created_at  timestamptz default current_timestamp,
    updated_at  timestamptz default current_timestamp
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
drop table if exists employee;
drop table if exists role;
-- +goose StatementEnd
